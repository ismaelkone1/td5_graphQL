<?php

namespace app\core\domain\entities;

class Personnel extends Entity
{
    public int $id;
    public string $nom;
    public string $prenom;
    public string $mail;
    public string $telephone;
    public int $groupe_id;
}