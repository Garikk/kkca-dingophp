/* 
 * Copyright (C) 2017 Garikk.
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


function cnf_OnLoad()
{
    //cnf_request_ConfState();
    cnf_request_LogInfo();
    
    
}

function cnf_request_LogInfo()
{
        $.getJSON('/configuration/cnf_get_loginfo/', function (Data) {
        cnf_fill_loginfo(Data);
    });
    
}

function cnf_fill_loginfo(data)
{
     $("#table_conflog_tb").empty();
        data.forEach(function (item, i, arr) {
        var tr="<td class='odd'>"+item['timestamp']+"</td><td class='odd'>"+item['name']+"</td><td class='odd'>"+item['message']+"</td>";
        $('#table_conflog_tb').append(tr)
      });
}