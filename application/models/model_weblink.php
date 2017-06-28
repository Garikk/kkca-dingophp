<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of model_kkcontroller
 *
 * @author Garikk
 */
class model_weblink extends Model {

    function __construct() {
        $this->dbc = new dbconnection();
    }

    public function get_data() {
        
    }

    public function get_config($MyID) {
        
        return $this->dbc->ExecQuery(
                        "SELECT"
                            . " kkiot.uuid AS kkiotuuid,"
                            . " configurations.uuid AS confuuid,"
                            . " configurations.stamp AS confstamp, "
                            . " system_state.kkcontroller_version as kkcontroller_version,"
                            . " system_state.base_version as base_version "
                        . " FROM kkiot "
                            . " INNER JOIN configurations"
                            . " ON (configurations.id=kkiot.activeconfiguration)"
                            . " INNER JOIN system_state ON (system_state.state=1)"
                            . " WHERE kkiot.uuid='".$MyID."'");
    }

    public function get_config_data($MyID) {
        return $this->dbc->ExecQuery(
                        "SELECT" 
                        ."      configurations.uuid as uid,"
                        ."      configurations.configuration as data,"
                        ."      configurations.configurationtype as configurationtype"
                        ."  FROM "
                        ."      configurations"
                        ."  WHERE"
                        ."      configurations.ownerconf IN ("
                        ."  SELECT "
                        ."      configurations.id "
                        ."  FROM "
                        ."      configurations "
                        ."  INNER JOIN"
                        ."      kkiot"
                        ."  ON "
                        ."      (kkiot.id=configurations.id) "
                        ."  WHERE "
                        ."      kkiot.uuid='".$MyID."')"
                        . " OR"
                        . "     configurationtype=3"); //Get global conf
    }

    public function get_files_info($MyID, $RequiredFiles, $ConfigUID, $IsBinFiles) {
        if ($IsBinFiles==false) {

            return $this->dbc->ExecQuery(
                    "SELECT"
                    ."  files.name,"
                    ."  files.url"
                    ." FROM "
                    ."  files"
                    ." WHERE files.owner_conf IN (SELECT configurations.id FROM configurations WHERE configurations.ownerconf=(SELECT configurations.id FROM configurations WHERE configurations.uuid=$1))"
                    , array($ConfigUID));
  
        } else {
            return $this->dbc->ExecQuery(   
                    "SELECT 
                        files.name, files.url FROM files JOIN plugins ON files.owner_plugin=plugins.id WHERE plugins.uuid IN  (".implode(",",array($RequiredFiles)).")");
        }
    }

}
