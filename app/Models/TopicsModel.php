<?php

namespace App\Models;

use CodeIgniter\Model;

class TopicsModel extends Model
{
    protected $table            = 'topics';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $allowedFields    = ["name"];

    public function getAllTopics()
    {
        return $this->findAll();
    }

    public function getTopic($id)
    {
        return $this->where('id', $id)->first();
    }
}
