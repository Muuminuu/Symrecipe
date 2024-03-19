<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240318173537 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        // $this->addSql('ALTER TABLE ingredient RENAME INDEX fk_user_id_ingredient TO IDX_6BAF7870A76ED395');
        // $this->addSql('ALTER TABLE recipe ADD user_id INT NOT NULL');
        // $this->addSql('ALTER TABLE recipe ADD CONSTRAINT FK_DA88B137A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        // //$this->addSql('CREATE INDEX IDX_DA88B137A76ED395 ON recipe (user_id)');
        // $this->addSql('ALTER TABLE user CHANGE updated_at updated_at DATETIME NOT NULL COMMENT \'(DC2Type:datetime_immutable)\'');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        // $this->addSql('ALTER TABLE ingredient RENAME INDEX idx_6baf7870a76ed395 TO fk_user_id_ingredient');
        // $this->addSql('ALTER TABLE recipe DROP FOREIGN KEY FK_DA88B137A76ED395');
        // //$this->addSql('DROP INDEX IDX_DA88B137A76ED395 ON recipe');
        // $this->addSql('ALTER TABLE recipe DROP user_id');
        // $this->addSql('ALTER TABLE user CHANGE updated_at updated_at DATETIME NOT NULL');
    }
}
