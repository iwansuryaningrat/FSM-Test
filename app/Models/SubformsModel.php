<?php

namespace App\Models;

use CodeIgniter\Model;

class SubformsModel extends Model
{
    protected $table            = 'subforms';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $allowedFields    = ["question", "type", "topic_id"];

    public function getSubformsByTopicId($id)
    {
        return $this->where("topics_id", $id)->findAll();
    }
}
