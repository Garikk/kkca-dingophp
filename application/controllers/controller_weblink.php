<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of kkcontroller
 *
 * @author blinov_is
 */
class Controller_weblink extends wservice {

    function __construct() {
        $this->model = new model_weblink();
    }

    function Action_configuration_info()
    {
         if (!isset($_POST[PARAM_CTRLR_POST_REQUEST_ACT])) {
            $this->AnswerError('bad request');
            return;
        }

        $myid = filter_input(INPUT_POST, PARAM_CTRLR_POST_REQUEST_MYUUID);
        
        $this->GetConfigurationInfo($myid);
    }
    
    function Action_configuration_data()
    {
         if (!isset($_POST[PARAM_CTRLR_POST_REQUEST_ACT])) {
            $this->AnswerError('bad request');
            return;
        }

        $myid = filter_input(INPUT_POST, PARAM_CTRLR_POST_REQUEST_MYUUID);
        $this->GetConfigurationData($myid);
    }
    
    function Action_files_bin_info()
    {
         if (!isset($_POST[PARAM_CTRLR_POST_REQUEST_ACT])) {
            $this->AnswerError('bad request');
            return;
        }

        $myid = filter_input(INPUT_POST, PARAM_CTRLR_POST_REQUEST_MYUUID);
        $this->GetFilesInfo($myid,true);
    }
                                 
    
    
    function GetConfigurationInfo($MyID) {
        $resData = $this->model->get_config($MyID);

        $resData["Pack"]=$resData;
        
        $res = array(
            'answerState' => '0',
            'version' => 1,
            'jsonData' => json_encode($resData)
        );
        header('Content-type: application/json');
        echo json_encode($res);
    }

    function GetConfigurationData($MyID) {

        $resData = $this->model->get_config_data($MyID);
        if ($resData == FALSE)
            $this->AnswerError('request error, wrong uuid?');

        $resPre = array(
            'kkcaruid' => $MyID,
            'configurations' => $resData
        );
        $res = array(
            'answerState' => '0',
            'version' => 1,
            'jsonData' => json_encode($resPre)
        );
        header('Content-type: application/json');
        echo json_encode($res);
    }

    function GetFilesInfo($MyID,$IsBinFile) {
        $reqFiles="";
        $confUID="";
        if ($IsBinFile) {
            $reqFiles = filter_input(INPUT_POST, PARAM_CTRLR_POST_REQUEST_REQFILESBIN);
        } else {
            $confUID = filter_input(INPUT_POST, PARAM_CTRLR_POST_REQUEST_CONFUUID);
        }

        $resData['pack'] = $this->model->get_files_info($MyID,$reqFiles, $confUID, $IsBinFile);
        if ($resData == FALSE) {
            $this->AnswerError('request error, wrong uuid?');
        }

        $res = array(
            'answerState' => '0',
            'version' => 1,
            'jsonData' => json_encode($resData)
        );
        header('Content-type: application/json');
        echo json_encode($res);
    }

    function AnswerError($dat) {
        $res = array(
            'answerState' => '1',
            'version' => 1,
            'jsonData' => "Error: " . $dat
        );
        header('Content-type: application/json');
        echo json_encode($res);
        die();
    }

}
