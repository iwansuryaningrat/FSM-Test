<?php

namespace App\Controllers;

use App\Models\ResponsesModel;
use App\Models\SubformsModel;
use App\Models\TopicsModel;
use App\Models\UsersModel;


class Home extends BaseController
{
    protected $responsesModel;
    protected $subformsModel;
    protected $topicsModel;
    protected $usersModel;

    public function __construct()
    {
        $this->responsesModel = new ResponsesModel();
        $this->subformsModel = new SubformsModel();
        $this->topicsModel = new TopicsModel();
        $this->usersModel = new UsersModel();
    }

    public function index()
    {
        $topics = $this->topicsModel->getAllTopics();
        $responses = $this->responsesModel->getAllResponses();
        dd($responses);
        $data = [
            'title' => 'Daftar Topics',
            'topics' => $topics
        ];

        return view('home', $data);
    }

    public function subform()
    {
    }
}
