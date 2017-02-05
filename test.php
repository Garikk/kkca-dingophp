
<?php 
echo $_POST['mpt_loginfield'];
echo $_POST['mpt_passfield'];

?>
<form class="navbar-form navbar-right" method="post"  action="test.php">
                <div class="form-group">
                    <input id="mpt_loginfield" type="text" placeholder="Login" class="form-control">
                </div>
                <div class="form-group">
                    <input id="mpt_passfield" type="password" placeholder="Password" class="form-control">
                </div>
                <button type="submit" class="btn btn-success">Войти</button>
            </form>