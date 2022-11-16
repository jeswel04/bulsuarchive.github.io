<?php
/**
 * Dashboard class
 */
class Update extends Controller{
    function index(){
        $data['errors'] = [];
        $user = new User();
        $tempuser = new TempUser();
        $research = new Research();
        $dept = new Department();
        $course = new Course();
        $id= $_SESSION['USER_DATA']['id'];
        $data['course']=$course->fetchCourse();
        $data['department']=$dept->fetchAll('department_code');
        $tempid = $_GET['id'];

        if(!Auth::logged_in()){
            redirect('login');
        }

        if(!Auth::is_admin()){
            redirect('repository');
        }
        if(!isset($tempid)){
        }
        else{
            $data['tempuser']=$tempuser->getData($tempid);
        }
        if(isset($_POST['accept_account'])){
            if(isset($_POST['csrf_token']) && validateToken($_POST['csrf_token'])){
                $_POST['password']= $data['tempuser'][0]['password'];
                $_POST['confirm_password']= $data['tempuser'][0]['password'];
                if($user->validate($_POST)){
                    $_POST['date_validate'] = date("Y-m-d H:i:s");
                    $_POST['password']= $data['tempuser'][0]['password'];
                    $_POST['picture'] = $data['tempuser'][0]['picture'];
                    $user->insert($_POST);
                    $tempuser->delete($data['tempuser'][0]['id']);
                    message("<span class="."material-symbols-sharp".">verified</span> <h1>SUCCESS</h1> <h2>Accept Account SUCCESS</h2>");
                }
                else{
                    message("<span class="."material-symbols-sharp".">cancel</span> <h1>ERROR</h1> <h2>Accepting Account FAILED</h2>");
                    $data['errors'] = $user->errors;
                    show($data['errors']);
                    show($data['tempuser'][0]['password']);
                }
            }
            else{
                message("<span class="."material-symbols-sharp".">cancel</span> <h1>ERROR</h1> <h2>Accepting Account FAILED</h2>");
                $data['errors'] = $user->errors;
                show($data['errors']);
            }
        }
        

        if(isset($_POST['decline'])){
            $tempuser->delete($data['tempuser'][0]['id']);
            @unlink("../upload_files/".$data['tempuser'][0]['picture']);
            message("<span class="."\"material-symbols-sharp\""."> verified</span> <h1>ERROR</h1> <h2>DELETE Account SUCCESS</h2>");
            redirect('pendingaccounts');
        }
        
        $this->view('auth/admin/update',$data);
    }
 }