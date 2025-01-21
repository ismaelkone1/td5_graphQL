<?php

namespace app\core\service;

class PersonnelService
{
    public function getAllPersonnel(): array
    {
        // Implémentation : Récupère tout le personnel depuis la base de données
    }

    public function getPersonnelByGroup(int $groupe_id): array
    {
        // Implémentation : Filtre le personnel par groupe
    }

    public function getPersonnelById(int $id): ?Personnel
    {
        // Implémentation : Récupère un membre du personnel par son ID
    }
}