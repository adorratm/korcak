<?php

use Egulias\EmailValidator\Result\Result;

defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    public $viewData = null;
    public $viewFolder = "";
    public function __construct()
    {
        parent::__construct();
        $this->viewFolder = "dashboard_v";
        $this->load->model("general_model");
        $this->viewData = new stdClass();
        if (!get_active_user()) :
            redirect(base_url("login"));
        endif;
    }
    public function index()
    {
        redirect(base_url("settings"));
    }
    public function makeWebp()
    {
        rWebp2(str_replace("panel\\", "", FCPATH) . "public/images");
    }
    public function phpinfo()
    {
        phpinfo();
    }

    public function language($language='', $file='', $action=''){
        //Load library
        $this->load->library('linguo');
        $this->linguo->render($language, $file, $action);
        return;
    }

    /**
     * Change Language
     */
    public function switchLanguage($lang = "tr")
    {
        set_cookie("activeLang", $lang, strtotime("+1 year"));
        $this->session->set_userdata("activeLang", $lang);
        if (file_exists(dirname(APPPATH, 1) . '/application/language/' . $lang)) :
            $this->lang->load($lang, $lang, FALSE, TRUE, dirname(APPPATH, 1) . '/application/');
            redirect(base_url());
        endif;
    }
}
