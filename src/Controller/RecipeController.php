<?php

namespace App\Controller;

use App\Entity\Recipe;
use App\Form\RecipeType;
use Doctrine\ORM\EntityManager;
use App\Repository\RecipeRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Doctrine\ORM\Tools\Pagination\Paginator;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class RecipeController extends AbstractController
{
    /**
     * This controller display all recipes
     *
     * @param RecipeRepository $repository
     * @param PaginatorInterface $paginator
     * @param Request $request
     * @return Response
     */

    #[IsGranted('ROLE_USER')]
    #[Route('/recette', name: 'recipe.index', methods: ['GET'])]
    
    public function index(
        RecipeRepository $repository, 
        PaginatorInterface $paginator, 
        Request $request 
        ): Response {
        $recipes = $paginator->paginate(
            $repository->findBy(['user' => $this->getUser()]),
            $request->query->getInt('page', 1),
            10
        );

        return $this->render('pages/recipe/index.html.twig', [
            'recipes' => $recipes,
        ]);
    }

    /**
     * This controller allow us to create a new recipe
     * 
     * @param Request $request
     * @param EntityManagerInterface $manager
     * @return Response
     */

    #[IsGranted('ROLE_USER')]
    #[Route('/recette/creation', name: 'recipe.new', methods: ['GET', 'POST'])]
    public function new(
        Request $request, 
        EntityManagerInterface $manager
        ): Response{
        $recipe = new Recipe();
        $form = $this->createForm(RecipeType::class, $recipe);

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()) {
            $recipe = $form->getData();
            $recipe->setUser($this->getUser());

            $manager->persist($recipe);
            $manager->flush();

            $this->addFlash(
                'success', 
                'La recette a été créée avec succès !');

            return $this->redirectToRoute('recipe.index');
        }

        return $this->render('pages/recipe/new.html.twig',
    [
        'form' => $form->createView(),
    ]);
    }
    
    /**
     * This controller allow us to edit a recipe
     *
     * @param Recipe $recipe
     * @param Request $request
     * @param EntityManagerInterface $manager
     * @return Response
     */

    #[IsGranted('ROLE_USER')]
    #[Route('/recette/edition/{id}', 'recipe.edit', methods : ['GET', 'POST'])]
    public function edit(
        Recipe $recipe, 
        Request $request, 
        EntityManagerInterface $manager
        ) : Response {
        if ($this->getUser() !== $recipe->getUser()) {
            return $this->redirectToRoute('recipe.index');
        }
        $form = $this->createForm(RecipeType::class, $recipe);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $recipe = $form->getData();

            $manager->persist($recipe);
            $manager->flush();

            $this->addFlash(
                'success',
                'La recette a été modifiée avec succès.'
            );

            return $this->redirectToRoute('recipe.index');
        }

        return $this->render('pages/recipe/edit.html.twig',
        [
            'form' => $form->createView()
        ]);
    }
    
    /**
     * This controller allow us to delete a recipe
     *
     * @param EntityManagerInterface $manager
     * @param Recipe $recipe
     * @return Response
     */
    #[Route('/recette/suppression/{id}', 'recipe.delete', methods : ['GET'])]
    public function delete(
        EntityManagerInterface $manager, 
        Recipe $recipe
        ) : Response
    {
        $manager->remove($recipe);
        $manager->flush();

        $this->addFlash(
            'success',
            'La recette a été supprimée avec succès.'
        );

        return $this->redirectToRoute('recipe.index');
    }
}
