<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

const ANS_ERRORS_UNKNOWN=99;
const ANS_ERRORS_ACCOUNT_UNKNOWN=80;
const ANS_ERRORS_ACCOUNT_ERRAUTH=81;
const ANS_ERRORS_ACCOUNT_DISABLED=82;

const ANS_ERRORS_CONFIG_UNKNOWN=70;
const ANS_ERRORS_CONFIG_NOTSET=71;
const ANS_ERRORS_CONFIG_ERRTARGET=72;


const WEBMASTER_REQUEST_GET_SYSSTATE = 0;           //check server available
const WEBMASTER_REQUEST_GET_MYCONF_INFO = 1;           //get ctrlr configuration, ID, stamp
const WEBMASTER_REQUEST_GET_MYCONF_DATA = 2;           //get ctrlr configuration
const WEBMASTER_REQUEST_GET_PLUGINS_INFO = 5;          //get plugins id, version and config stamp
const WEBMASTER_REQUEST_GET_PLUGINS_DATA = 6;          //get extended plugins info (with file names)
const WEBMASTER_REQUEST_GET_FILES_INFO_BIN = 10;          //get extended plugins info (with file names)
const WEBMASTER_REQUEST_GET_FILES_INFO_EXTCONF = 11;          //get extended plugins info (with file names)
const WEBMASTER_REQUEST_CTRLR_DATA_KKPIN = 50;               //KKSystem PIN
   
const WEBMASTER_REQUEST_EXTCONN_GETPIN = 70;               //KKSystem PIN
const WEBMASTER_REQUEST_EXTCONN_PUTPIN = 71;               //KKSystem PIN

const WEBMASTER_REQUEST_FIELD_CHECK = "check";
const WEBMASTER_REQUEST_FIELD_ACT = "action";
const WEBMASTER_REQUEST_FIELD_MYUUID = "myid";
const WEBMASTER_REQUEST_FIELD_CLIENTINFO = "clientinfo";
const WEBMASTER_REQUEST_FIELD_CONFUUID = "confuid";
const WEBMASTER_REQUEST_FIELD_JSON_OBJ = "json_object";
const WEBMASTER_REQUEST_FIELD_REQFILESBIN = "reqfilesbin";
const WEBMASTER_REQUEST_FIELD_EXTCONN_PINDATA = "pindata";