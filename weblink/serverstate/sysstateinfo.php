<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include 'database.php';

function answerSystemState()
{
    $dblink=getDBLink();
    
    $query="SELECT id,state,name,kkcontroller_version,base_version FROM system_state WHERE state > 0";
    //
    $result = $link->query($query) or die("DB ERROR");

    $Ret = array();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $Ret[$row['id']] = $row;
        }
    }

    $result->close();
    $link->close();

    return $Ret;
}