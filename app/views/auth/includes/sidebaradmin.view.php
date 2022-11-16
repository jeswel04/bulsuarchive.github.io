<div class="top">
    <div class="logo">
        <img src="../public/assets/images/admin.png">
    </div>
    <div class="close" id="close-btn">
    <span class="material-icons-sharp">close</span>
    </div>
</div>
<div class="sidebar">
    <a href="<?=ROOT?>/dashboard">
        <span class="material-icons-sharp">dashboard</span>
        <h3>Dashboard</h3>
    </a>
    <a href="<?=ROOT?>/repository" >
        <span class="material-icons-sharp">archive</span>
        <h3>Repository</h3>
    </a>
    <a href="<?=ROOT?>/myuploads" >
        <span class="material-icons-sharp">upload</span>
        <h3>My Uploads</h3>
    </a>
    <a href="<?=ROOT?>/savedpapers">
        <span class="material-icons-sharp">bookmark</span>
        <h3>Saved Papers</h3>
    </a>
    <a href="<?=ROOT?>/htry">
        <span class="material-icons-sharp">history</span>
        <h3>History</h3>
    </a>
    <a href="<?=ROOT?>/managefiles">
        <span class="material-icons-sharp">note_alt</span>
        <h3>Manage Files</h3>
    </a>
    <a href="<?=ROOT?>/manageaccounts">
        <span class="material-icons-sharp">manage_accounts</span>
        <h3>Manage Accounts</h3>
    </a>
    <a href="<?=ROOT?>/pendingaccounts">
        <span class="material-icons-sharp">pending</span>
        <h3>Pending Accounts</h3>
        <?php $tempuser = new TempUser;
            $temp = $tempuser->rowCount();
        if($temp[0]['count(*)']!="0"){
            echo"<span class = \"notif\">".$temp[0]['count(*)']."</span>";
        }?>

    </a>
    <a href="<?=ROOT?>/about">
        <span class="material-icons-sharp">info</span>
        <h3>About</h3>
    </a>
    <a href="<?=ROOT?>/logout">
        <span class="material-icons-sharp">logout</span>
        <h3>Logout</h3>
    </a>
</div>