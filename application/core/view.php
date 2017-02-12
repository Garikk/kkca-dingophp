<?php

class View
{
	
	//public $template_view; // здесь можно указать общий вид по умолчанию.
	
	/*
	$content_file - виды отображающие контент страниц;
	$template_file - общий для всех страниц шаблон;
	$data - массив, содержащий элементы контента страницы. Обычно заполняется в модели.
	*/
	function generate($content_view, $template_view,$plugin_scripts="", $data = null)
	{
		include 'application/views/'.$template_view;
	}
        function getTemplateJSVariables()
        {
            return;
            if (session_status()!= PHP_SESSION_NONE && $_SESSION[SSN_AUTH_STATE]==true)
            {
                $Ret="mpv_AuthState=true;mpv_UserName='".$_SESSION[SSN_AUTH_LOGIN]."'";
            }
            else
            {
                $Ret="mpv_AuthState=false;mpv_UserName=''";
            }
            echo $Ret;
        }
}
