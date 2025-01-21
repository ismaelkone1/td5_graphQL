<?php

namespace app\core\service;

use app\core\domain\entities\{Groupement, Personnel, Praticien, Specialite, TypeGroupement};

class PraticienService
{
    public function getAllPraticiens(): array
    {
        // Implémentation : Récupère tous les praticiens depuis la base de données
    }

    public function getPraticiensByGroup(int $groupe_id): array
    {
        // Implémentation : Filtre les praticiens par groupe
    }
}
