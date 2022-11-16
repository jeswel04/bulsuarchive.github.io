<?php
/**
 * Manage class
 */
class Manage extends Controller{
    function index(){
        $data['errors'] = [];
        $user = new User();
        $research = new Research();
        $dept = new Department();
        $course = new Course();
        $id= $_SESSION['USER_DATA']['token'];
        $data['course']=$course->fetchCourse();
        $data['department']=$dept->fetchAll('department_code');
        $tempid = $_GET['id'];
        
        if(!Auth::logged_in()){
            redirect('login');
        }
        if(Auth::is_student()){
            redirect('repository');
        }
        
        if(!isset($_GET['id'])){
            redirect('login');
        }
        else{
            $data['user']=$user->getData($tempid);
        }
        $row= $user->first(['token'=>$tempid]);
            if(isset($_POST['update']) && $row){
                if(isset($_POST['token']) && validateToken($_POST['token'])){
                    $user->update($row['id'],$_POST);
                    message("<span class="."material-symbols-sharp".">verified</span> <h1>SUCCESS</h1> <h2>Accept Account SUCCESS</h2>");
                }
                else{
                message("<span class="."material-symbols-sharp".">cancel</span> <h1>ERROR</h1> <h2>Accepting Account FAILED</h2>");
                    $data['errors'] = $user->errors;
                }
           }

           if(Auth::is_admin()){
            if(isset($_POST['dept'])){
                if($dept->validate($_POST)){
                    $_POST['user_id']= $id;
                    $_POST['date']= date("Y-m-d H:i:s");
                    $dept->insert($_POST);
                    message("<span class="."material-symbols-sharp".">verified</span> <h1>SUCCESS</h1> <h2>Adding department SUCCESS</h2>");
                    redirect('manage');
                }
                else{
                    message("<span class="."material-symbols-sharp".">cancel</span> <h1>ERROR</h1> <h2>Adding department FAILED</h2>");
                    $data['errors'] = $dept->errors;
                    redirect('manage');
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
                    redirect('manage');
                }
                
            }

            if(isset($_POST['account'])){
                if(isset($_POST['token']) && validateToken($_POST['token'])){
                    if($user->validate($_POST)){
                        $_POST['date_validate'] = date("Y-m-d H:i:s");
                        $_POST['password'] = password_hash($_POST['password'],PASSWORD_DEFAULT);
                        $user->insert($_POST);
                        message("<span class="."material-symbols-sharp".">verified</span> <h1>SUCCESS</h1> <h2>Create Account SUCCESS</h2>");
                        redirect('manage');
                    }
                    else{
                        message("<span class="."material-symbols-sharp".">cancel</span> <h1>ERROR</h1> <h2>Create Account FAILED</h2>");
                        $data['errors'] = $user->errors;
                        redirect('manage');
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
                        $_POST['picture1'] = $research->validateFile2($_POST['title']);
                        $research->insert($_POST);
                        message("<span class="."material-symbols-sharp".">verified</span> <h1>SUCCESS</h1> <h2>Upload Capstone/Thesis SUCCESS</h2>");
                        redirect('manage');
                    }
                    else{
                        message("<span class="."material-symbols-sharp".">cancel</span> <h1>ERROR</h1> <h2>Upload Capstone/Thesis FAILED</h2>");
                        $data['errors'] = $research->errors;
                        redirect('manage');
                    }
                    
                }
            }

        }
        $this->view('auth/admin/manage',$data);
    }
 }