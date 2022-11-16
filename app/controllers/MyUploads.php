<?php
/**
 * My uploads class
 */
class Myuploads extends Controller{

    function index(){
        $data['errors'] = [];
        $user = new User();
        $research = new Research();
        $dept = new Department();
        $course = new Course();
        $id= $_SESSION['USER_DATA']['token'];
        $data['course']=$course->fetchCourse();
        $data['department']=$dept->fetchAll('department_code');

        if(!Auth::logged_in()){
            redirect('login');
        }

        if(Auth::is_student()){
            redirect('repository');
        }
        
        $row = $research->first(['user_id'=>$_SESSION['USER_DATA']['id']]);
        if($row){
            $data['research']=$research->fetchAll('id');
        }

        $rows = $research->first(['user_id'=>$_SESSION['USER_DATA']['id']]);
        if($rows){
            if(isset($_POST['search'])){
                $data['search'] = $research->searchResearch($_POST['input_search']);
            }
            if(isset($_POST['cancel'])){
                redirect('myuploads');
            }
        }
        if(Auth::is_admin()){
            if(isset($_POST['dept'])){
                if($dept->validate($_POST)){
                    $_POST['user_id']= $id;
                    $_POST['date']= date("Y-m-d H:i:s");
                    $dept->insert($_POST);
                    message("<span class="."material-symbols-sharp".">verified</span> <h1>SUCCESS</h1> <h2>Adding department SUCCESS</h2>");
                    redirect('dashboard');
                }
                else{
                    message("<span class="."material-symbols-sharp".">cancel</span> <h1>ERROR</h1> <h2>Adding department FAILED</h2>");
                    $data['errors'] = $dept->errors;
                    redirect('dashboard');
                }
            }

            if(isset($_POST['course'])){
                if($course->validate($_POST)){
                    $_POST['user_id']= $id;
                    $_POST['date']= date("Y-m-d H:i:s");
                    $course->insert($_POST);
                    message("<span class="."material-symbols-sharp".">verified</span> <h1>SUCCESS</h1> <h2>Adding course SUCCESS</h2>");
                }
                else{
                    message("<span class="."material-symbols-sharp".">cancel</span> <h1>ERROR</h1> <h2>Adding course FAILED</h2>");
                    $data['errors'] = $course->errors;
                    redirect('dashboard');
                }
                
            }

            if(isset($_POST['account'])){
                if(isset($_POST['token']) && validateToken($_POST['token'])){
                    if($user->validate($_POST)){
                        $_POST['date_validate'] = date("Y-m-d H:i:s");
                        $_POST['password'] = password_hash($_POST['password'],PASSWORD_DEFAULT);
                        $user->insert($_POST);
                        message("<span class="."material-symbols-sharp".">verified</span> <h1>SUCCESS</h1> <h2>Create Account SUCCESS</h2>");
                        redirect('dashboard');
                    }
                    else{
                        message("<span class="."material-symbols-sharp".">cancel</span> <h1>ERROR</h1> <h2>Create Account FAILED</h2>");
                        $data['errors'] = $user->errors;
                        redirect('dashboard');
                    }
                }
            }
        }
        if(Auth::is_admin() || Auth::is_faculty()){
            if(isset($_POST['upload_file'])){
                if(isset($_POST['token']) && validateToken($_POST['token'])){
                    if($research->validate($_POST)){
                        $_POST['user_id']= $id;
                        $_POST['date_publish']= date("Y-m-d H:i:s");
                        $_POST['picture'] = $research->validateFile1($_POST['title']);
                        $research->insert($_POST);
                        message("<span class="."material-symbols-sharp".">verified</span> <h1>SUCCESS</h1> <h2>Upload Capstone/Thesis SUCCESS</h2>");
                        redirect('dashboard');
                    }
                    else{
                        message("<span class="."material-symbols-sharp".">cancel</span> <h1>ERROR</h1> <h2>Upload Capstone/Thesis FAILED</h2>");
                        $data['errors'] = $research->errors;
                        redirect('dashboard');
                    }
                    
                }
            }

        }
        $this->view('auth/admin/myuploads',$data);
    }
 }