<?php

namespace app\core\domain\entities;

class Praticien
{
    public int $id;
    public string $nom;
    public string $prenom;
    public string $ville;
    public string $email;
    public string $telephone;
    public int $specialite_id;
    public int $groupe_id;
}
