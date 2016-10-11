<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include_once 'constants.php';

$action=$_POST['action'];

if (isset($_POST['action']))
{
    AnswerError(99,'Wrong request');
}

switch ($action):
    case WEBMASTER_REQUEST_GET_SYSSTATE:
        break;
    case WEBMASTER_REQUEST_GET_MYCONF_INFO:
        break;
    case WEBMASTER_REQUEST_GET_PLUGINS_INFO:
        break;
    case WEBMASTER_REQUEST_GET_PLUGINS_DATA:
        break;
endswitch;
 AnswerError(99,'Wrong request');
    

function AnswerData($Data)
{
    $Ret=array();
    $Ret['answer']=$RetCode;
    $Ret['description']=$RetText;
    
    echo json_encode($Ret);
    die();
}
function AnswerError($RetCode,$RetText)
{
    $Ret=array();
    $Ret['answer']=$RetCode;
    $Ret['description']=$RetText;
    
    echo json_encode($Ret);
    die();
}