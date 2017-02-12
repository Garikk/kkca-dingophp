<?php

class Controller_Login extends Controller
{
    function __construct() {
        parent::__construct();
        $this->model = new model_login();
    }

    function action_index() {
         $this->view->generate('login_view.php', 'template_adm_page.php');
         
         die();
         //
        if (!isset($_POST[PARAM_WEB_POST_ACTION])) {
            header("'Location: /");
        }

        $action = (int) filter_input(INPUT_POST, PARAM_WEB_POST_ACTION);
        $login = (String) filter_input(INPUT_POST, PARAM_WEB_POST_LOGIN_LOGIN);
        $pass = (String) filter_input(INPUT_POST, PARAM_WEB_POST_LOGIN_PASS);
        if (isset($_POST[PARAM_WEB_POST_LOGIN_SKIPLOGIN])) {
            $skiplogin = true;
        } else {
            $skiplogin = false;
        }

        if ($action == ACT_WEB_LOGIN_LOGIN) {
            $authState = $this->model->make_authorization($login, $pass);
            $authState = true;
            if ($authState == true) {
                $this->startWorkSession($login);
            }
        } elseif ($action == ACT_WEB_LOGIN_LOGOFF) {
            $this->stopWorkSession();
        }

        if (!$skiplogin) {
            $this->view->generate('login_view.php', 'template_mp_view.php');
        } else {
            header("Location: /");
        }
    }

    function startWorkSession($login)
    {
        session_destroy();
        session_start();
        $_SESSION[SSN_AUTH_LOGIN]=$login;
        $_SESSION[SSN_AUTH_STATE]=true;
        
    }
    function stopWorkSession()
    {
        session_destroy();
        session_start();
        $_SESSION[SSN_AUTH_LOGIN]="";
        $_SESSION[SSN_AUTH_STATE]=false;
    }
    
    
}

//$data["login_status"] = "";
/*
		if(isset($_POST['login']) && isset($_POST['password']))
		{
			$login = $_POST['login'];
			$password =$_POST['password'];
			

			if($login=="admin" && $password=="12345")
			{
				$data["login_status"] = "access_granted";
				
				session_start(); echo $_SESSION['admin'];
				$_SESSION['admin'] = $password;
				header('Location:/admin/');
			}
			else
			{
				$data["login_status"] = "access_denied";
			}
		}
		else
		{
			$data["login_status"] = "";
		}
		
		$this->view->generate('login_view.php', 'template_mp_view.php', $data);
     */