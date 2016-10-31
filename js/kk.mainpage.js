/* 
 * Created by Garikk
 */

function makeHash(pass)
{
    if (pass === "") {
        return ""
    }

    var shaObj = new jsSHA("SHA-256", "TEXT");
    shaObj.update(pass);
    var hash = shaObj.getHash("HEX");
    return hash;
}

function loginToDingo()
{
    var hash=makeHash($("#mpt_passwordfield").val());
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
    
    
}

