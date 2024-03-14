<?php

namespace App\DataFixtures;

use App\Entity\Ingredient;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Faker\Generator;
use Faker\Factory;

class AppFixtures extends Fixture
{

    private Generator $faker;

    public function __construct()
    {
        // prof fait juste Factory::create('fr_FR')
        $this->faker = \Faker\Factory::create('fr_FR');
    }
    public function load(ObjectManager $manager): void
    {
        for ($i=1; $i < 50; $i++) {

        // $product = new Product();
        // $manager->persist($product);
            $ingredient = new Ingredient();
            $ingredient->setName($this->faker->word())
            ->setPrice(mt_rand(1,100)); 
        
            $manager->persist($ingredient);
        }
        $manager->flush();
    }
}
