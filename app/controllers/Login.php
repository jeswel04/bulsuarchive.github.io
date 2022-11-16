<?php
/**
 * home class
 */
//require_once '../app/core/functions.php';
class Login extends Controller{

    function index(){
        $db = new Database();
        $db->create_tables();
        $data['errors'] = [];
        $user = new User();
        $course= new Course();
        $dept= new Department();
        $tempuser = new TempUser();
        $counter= new Counter();
        $data['course']=$course->fetchAll('course_code');
        $data['department']=$dept->fetchAll('department_code');

        if(isset($_POST['login'])){
            if(isset($_POST['token']) && validateToken($_POST['token'])){
                $row = $user->first([
                'email_verified'=>$_POST['email_verified']
                ]);
                if($row){
                    if(password_verify($_POST['password'], $row['password'])){
                        $_POST['token'] = $_POST['token'];
                        $_POST['visit_date'] = date("Y-m-d H:i:s");
                        $_POST['ip_address'] =$_SERVER['REMOTE_ADDR'];
                        $counter->insert($_POST);
                        Auth::authenticate($row);
                        if(Auth::is_admin()){
                        redirect('dashboard');
                        }
                        elseif(Auth::is_faculty()){
                            redirect('dashboard');
                        }
                        else{
                            redirect('repository');
                        }
                    }
                    else{
                    message("<span class="."\"material-symbols-sharp\"".">cancel</span> <h2>Failed to login</h2> <p><p>");
                    $data['errors']['email_verified'] = "Wrong email or password";
                    }
                }
                else{
                    message("<span class="."\"material-symbols-sharp\"".">cancel</span> <h2>Failed to login</h2> <p><p>");
                    $data['errors']['email_verified'] = "Wrong email or password";
                }
            }
            else{
                message("<span class="."\"material-symbols-sharp\"".">cancel</span> <h2>Failed to login</h2> <p><p>");
                $data['errors']['email_verified'] = "Wrong email or password";
            }
            
        }
        
        if(isset($_POST['signUp'])){
            if(isset($_POST['token']) && validateToken($_POST['token'])){
                $_POST['picture'] = $tempuser->validateFile($_POST['school_id']);
                $_POST['email'] = $tempuser->validateEmail($_POST['email']);
                if($tempuser->validate($_POST)){
                    $_POST['date_validate'] = date("Y-m-d H:i:s");
                    $_POST['password'] = password_hash($_POST['password'],PASSWORD_DEFAULT);
                    $tempuser->insert($_POST);
                    message("<span class="."\"material-symbols-sharp\"".">verified</span> <h2>Your account is under review</h2> <p>We'll send you an email once we verified your request.</p>");
                }
                else{
                message("<span class="."\"material-symbols-sharp\"".">cancel</span> <h2>Failed to signup</h2> <p>They have an error in your sign-up form<p>");
                    echo'token invalid';
                $data['errors'] = $tempuser->errors;
                }
            }
            else{
                message("<span class="."\"material-symbols-sharp\"".">cancel</span> <h2>Failed to signup</h2> <p>They have an error in your sign-up form<p>");
                $data['errors'] = $tempuser->errors;
            }
            show($_POST);
        }
        $this->view('auth/login',$data);
    }
 }
