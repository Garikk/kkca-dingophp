/* 
 * Created by Garikk
 */

function makeHash(pass)
{
    if (pass === "") {
        return "";
    }

    var hash = CryptoJS.SHA256(pass);
    hash=hash.toString(CryptoJS.enc.Hex);
    return hash;
}

function loginToDingo()
{
    var hash=makeHash($("#mpt_passfield").val());
    $.post(
            "login",
            {
                action: 1,
                login: $("#mpt_loginfield").val(),
                hash: hash
            },
            onLoginToDingoAjax
            );
}

function onLoginToDingoAjax(data)
{
    alert(data);
    
}

