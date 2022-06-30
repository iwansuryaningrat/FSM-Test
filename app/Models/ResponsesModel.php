<?php

namespace App\Models;

use CodeIgniter\Model;

class ResponsesModel extends Model
{
    protected $table            = 'responses';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $allowedFields    = ["value", "attempt", "subform_id", "user_id"];

    public function getAllResponses()
    {
        return $this->select("responses.*, subform.id, subform.question. subform.topics_id, topics.*, users.*")->join('subforms', 'subforms.id=responses.subform_id')->join('users', 'users.id=responses.user_id')->join("topics", 'topics.id=subform.topic_id')->findAll();
    }
}
