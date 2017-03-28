/* 
 * Copyright (C) 2017 Garikk
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301  USA
 */


function onMainTemplateLoad()
{
    if (!mpv_AuthState)
    {
        $("#mpv_logoffform").hide();
        $("#mpv_loginform").show();
        $("#mpv_userlogin").val(mpv_UserName);
    } else
    {
        $("#mpv_logoffform").show();
        $("#mpv_loginform").hide();
        $("#mpv_userlogin").text(mpv_UserName);
    }
}

function tpl_adm_OnLoad()
{
    tpl_adm_ReqAvailPlugins();
    tpl_adm_ReqAvailkkiotConf();
    tpl_adm_ReqActivekkiot();
}

function tpl_adm_ReqAvailPlugins()
{
    $.getJSON('/services/dw_svcs_plugins_getplugins', function (Data) {
        tpl_adm_FillPluginMenuItems(Data);
    });
}

function tpl_adm_FillPluginMenuItems(Data)
{
    //Clear old menu
    $("#side-menu").empty();
    Data.forEach(function (item, i, arr) {
        //Fill Plugin items
        if (item['isgroup']=="0")
        {
            if (item['parent']=="0")
            {
               $("#side-menu").append("<li><a href=../" + item['link'] + ">" + item['name_lc'] + "</a></li>");
            }
            else
            {
                $("#side-menu-sub-"+item['parent']).append("<li><a href=../" + item['link'] + ">" + item['name_lc'] + "</a></li>");
            }
        } else
        {
            $("#side-menu").append("<li><a href='#'><i class='fa fa-sitemap fa-fw'></i>"+item['name_lc']+"<span class='fa arrow'></span></a><ul id='side-menu-sub-"+item['id']+"' class='nav nav-second-level collapse in' aria-expanded='true' style=''></li>");
        }
    });
}

function tpl_adm_ReqAvailkkiotConf()
{
    $.getJSON('/services/dw_svcs_kkiot_getavail_devices', function (Data) {
        tpl_adm_FillAvailkkiots(Data);
    });
}

function tpl_adm_FillAvailkkiots(Data)
{
    //Clear old menu
    $("#db_current_conf_ddm_items").empty();
    Data.forEach(function (item, i, arr) {
        //Fill Plugin items
        $("#db_current_conf_ddm_items").append("<li><a href='tpl_adm_ChangeActiveDevice("+item['id']+")'><i class='fa fa-car fa-fw'></i>"+item['name']+"</a></li>");
    });
}
function tpl_adm_ReqActivekkiot()
{
    $.getJSON('/services/dw_svcs_kkiot_getactive_device', function (Data) {
        tpl_adm_FillActivekkiot(Data);
    });
}
function tpl_adm_FillActivekkiot(Data)
{
    //Clear old menu
    Data.forEach(function (item, i, arr) {
        //Fill Plugin items
        $("#db_current_conf_ddm").text(item['name']);
    });
}





