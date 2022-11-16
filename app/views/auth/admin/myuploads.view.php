<?php $this->view('includes/header')?>
<body>
<?php if(message()):?>
    <div id="over_lay">
        <div class="container1">
            <center>
                <?=message('',true)?>
            </center>
            <div class="">
                <button class="done" id="done">Ok</button>
            </div>
        </div>
    </div>
<?php endif?>
<div class="container">
    <!------SIDEBAR----->
    <aside>
    <?php
      if(Auth::is_admin()){
        $this->view('auth/includes/sidebaradmin');
      }
      elseif(Auth::is_faculty()){
        $this->view('auth/includes/sidebarfaculty');
      }
      elseif(Auth::is_student()){
        $this->view('auth/includes/sidebarstudent');
      }
    ?>
    </aside>
    <!------END SIDEBAR----->

    <!------Dashboard----->
    <main>
  <div class="">
      <form method="POST">
        <input type="text" name="input_search" placeholder="Search...">
        <span class="icon">
            <button type="submit" id="search" name="search" style="background-color:transparent; cursor:pointer;"><i class="uil uil-search search-icon"></i></button>
        </span>
        <span class="icon">
            <button type="submit" id="cancel" name="cancel" style="background-color:transparent; cursor:pointer;"><i class="uil uil-times close-icon"></i></button>
        </span>
      </form>
    </div>
  
    <h1>My Uploads</h1>
    <?php
      if(!empty(isset($_POST['search']))){
        if(!empty($search)){
            foreach($search as $keys=>$value){
              echo "<div class=\"cardUpload\" style=\"min-height:10%\">".
              "<button class=\"btn_download\" style=\"background-color: transparent;\"><span class=\"material-symbols-sharp\" style=\"color:var(--color-info-dark);\">bookmark</span></button>".
              "<a href=\"".ROOT."/editfile?id=".$search[$keys]['token']."\">".
              "<h2 style=\"color:var(--color-primary);\">".$search[$keys]['title']."</h2>".
              "<span>".$search[$keys]['researchers']."</span>".
              "<br><span>".$search[$keys]['adviser']."</span>".
              "<br><p>".$search[$keys]['description']."</p>".
              "<span>".$search[$keys]['date_publish']."</span>".
              "<h3> VIEWS: ".$search[$keys]['views']." | DOWNLOADS: ".$search[$keys]['downloads']."</h3>".
              "</a></div><h2 style=\"color:var(--color-primary)\">________________________________________________________________________</h2>";
            }
        }
      }
      ?>
  <div class="cardContainer">
  <?php
    $root= ROOT;
    if(!empty($research)){
      foreach($research as $key=>$title){
        echo
            "<div class=\"cardUpload\">".
            "<a href=\"".$root."/editfile?id=".$research[$key]['token']."\">".
            "<h2 style=\"color:var(--color-primary);\">".$research[$key]['title']."</h2>".
            "<span>".$research[$key]['researchers']."</span>".
            "<br><span>Adviser: ".$research[$key]['adviser']."</span>".
            "<br><p>".$research[$key]['description']."</p>".
            "<span>".$research[$key]['date_publish']."</span></a></div>";
        }
    }
    ?>
    </div>
  </main>

    <!------END Dashboard----->
  <!----------END OF MAIN-------------->

  
  <div class="right">
      <div class="top">
        <button id="menu-btn">
          <span class="material-icons-sharp">menu</span>
        </button>
        <div class="theme-toggler">
          <span class="material-icons-sharp active">light_mode</span>
          <span class="material-icons-sharp">dark_mode</span>
        </div>
        <div class="profile">
          <div class="info">
            <p>Hey, <b><?=Auth::username()?></b></p>
            <small class="text-muted"><?=Auth::role()?></small>
          </div>
          <div class="profile-photo">
            <img src="../public/assets/images/bulsu_gate.jpg">
          </div>
        </div>
      </div><!--end top-->
      <!---------- RECENT UPDATES -------------->
      <h2 class="recent-header"> Recent Updates</h2>
      <div class="recent-updates">      
        <div class="updates">
          <div class="update">
            <div class="profile-photo">
              <img src="/img/profile-pic.jpg">
            </div>
            <div class="messgae">
              <p><b>Mike Tyson</b> received his order of
              Night lion tech GPS drone.</p>
              <small class="text-muted">2 Minutes Ago</small>
            </div>
          </div>
          <div class="update">
            <div class="profile-photo">
              <img src="/img/profile-pic.jpg">
            </div>
            <div class="messgae">
              <p><b>Mike Tyson</b> received his order of
              Night lion tech GPS drone.</p>
              <small class="text-muted">2 Minutes Ago</small>
            </div>
          </div>
          <div class="update">
            <div class="profile-photo">
              <img src="/img/profile-pic.jpg">
            </div>
            <div class="messgae">
              <p><b>Mike Tyson</b> received his order of
              Night lion tech GPS drone.</p>
              <small class="text-muted">2 Minutes Ago</small>
            </div>
          </div>
          <div class="update">
            <div class="profile-photo">
              <img src="/img/profile-pic.jpg">
            </div>
            <div class="messgae">
              <p><b>Mike Tyson</b> received his order of
              Night lion tech GPS drone.</p>
              <small class="text-muted">2 Minutes Ago</small>
            </div>
          </div>
          <div class="update">
            <div class="profile-photo">
              <img src="/img/profile-pic.jpg">
            </div>
            <div class="messgae">
              <p><b>Mike Tyson</b> received his order of
              Night lion tech GPS drone.</p>
              <small class="text-muted">2 Minutes Ago</small>
            </div>
          </div>
          <div class="update">
            <div class="profile-photo">
              <img src="/img/profile-pic.jpg">
            </div>
            <div class="messgae">
              <p><b>Mike Tyson</b> received his order of
              Night lion tech GPS drone.</p>
              <small class="text-muted">2 Minutes Ago</small>
            </div>
          </div>
          <div class="update">
            <div class="profile-photo">
              <img src="/img/profile-pic.jpg">
            </div>
            <div class="messgae">
              <p><b>Mike Tyson</b> received his order of
              Night lion tech GPS drone.</p>
              <small class="text-muted">2 Minutes Ago</small>
            </div>
          </div>
          <div class="update">
            <div class="profile-photo">
              <img src="/img/profile-pic.jpg">
            </div>
            <div class="messgae">
              <p><b>Mike Tyson</b> received his order of
              Night lion tech GPS drone.</p>
              <small class="text-muted">2 Minutes Ago</small>
            </div>
          </div>
        </div>
      </div>
    <!------- END OF RECENT UPDATES --------> 
    
    <!------- BUTTON CONTAINER -------->
      <div class="button-container">  
        <div id="dept" class="item btn-department">
          <span class="material-icons-sharp icon">school</span>          
          <div class="right"><h3>Add Department</h3></div>
        </div>

        <div id="course" class="item btn-course">
          <span class="material-icons-sharp icon">menu_book</span>          
          <div class="right"><h3>Add Course</h3></div>
        </div>

        <div id="account" class="item btn-account">
          <span class="material-icons-sharp icon">person_add</span>          
          <div class="right"><h3>Create an Account</h3></div>         
        </div>

        <div id="upload" class="item btn-thesis">
          <span class="material-icons-sharp">add</span>
          <h3>Add Thesis/ Capstone</h3>
        </div>
      </div>"
      <!------- END BUTTON CONTAINER -------->

      <!------- MODAL PER BUTTON CONTAINER -------->
      <!--DEPARTMENT MODAL-->
      <div class="modal-container" id="modal_container_dept">
        <div class="department">
          <span class="material-icons-sharp head">school</span>
          <button class="close" id="closeDept"> <strong><span class="material-icons-sharp close_logo">close</span></strong> </button>
          <h2 style="margin-top:10px ; margin-bottom:10px;">Add Department</h2>
          <form method="POST">
            <input type = hidden name="token" id="token" value=<?=User::createToken()?>></input>
            <input class="field" type="text" id="department_code" name="department_code" placeholder="Department Code" required>
            <?php if(!empty($errors['department_code'])):?>
                <span id="error"><?=$errors['department_code']?></span>
            <?php endif;?>
            
            <input class="field" type="text" id="department_description" name="department_description" placeholder="Description" required>
            <?php if(!empty($errors['department_description'])):?>
                <span id="error"><?=$errors['department_description']?></span>
            <?php endif;?>

            <button type="submit" class="field_btn" name="dept" id="submit">Submit</button>
            <button type="button" class="field_btn_list" id="dept_list" name="dept_list">Department List</button>
          </form>
        </div>
      </div>
      <!--END DEPARTMENT MODAL-->

      <!--DEPARTMENT LIST-->
      <div class="modal-container" id="modal_container_deptList">
        <div class="deptList">
          <div class="recent-order" style="margin-left: 2% ;">
            <table>
              <thead>
                <tr>
                <th><h3>Department List</h3></th> 
                <th><button class="close" id="closeDeptList"> <strong><span class="material-icons-sharp close_logo">close</span></strong> </button></th>
                </tr>
                <tr></tr>
                <tr>
                <th><h3>Department Code</h3>
                </th>
                <th>Department Name
                  
                </th>
                </tr>
              </thead>
              <tbody>
                <?php
                  if(!empty($department)){
                    foreach($department as $key=>$value){
                      echo
                        "<tr>".
                        "<td>".$department[$key]['department_code']."</td>".
                        "<td>".$department[$key]['department_description']."</td>".
                        "</tr>";
                    }
                  }
                  else{
                    echo
                      "<tr>".
                      "<td>----</td>".
                      "<td>No Department Available</td>".
                      "</tr>";
                  }
                ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <!--END OF DEPARTMENT LIST-->

      <!--MODAL FOR COURSE-->
      <div class="modal-container" id="modal_container_course">
        <div class="course">
        <span class="material-icons-sharp head">menu_book</span>
        <button class="close" id="closeCourse"> <strong><span class="material-icons-sharp close_logo">close</span></strong> </button>
        <h2 style="margin-top:10px ; margin-bottom:10px;">Add Course</h2>
        <form method="POST">
        <input type = hidden name="token" id="token" value=<?=User::createToken()?>></input>
        <select type="text" id="department_id" name="department_id" required>
          <option value="" disabled selected>Department</option>
          <?php
          if(!empty($department)){
            foreach($department as $key=>$value){
            echo
              "<option value=".$department[$key]['id'].">".$department[$key]['department_code']."</option>";
            }
          }
          else echo "<option value=\"\">No Department Available</option>";
          ?>
        </select>
        <?php if(!empty($errors['department_id'])):?>
          <span id="error"><?=$errors['department_id']?></span>
        <?php endif;?>

        <input class="field" type="text" placeholder="Course Code" id="course_code" name="course_code" required>
        <?php if(!empty($errors['course_code'])):?>
          <span id="error"><?=$errors['course_code']?></span>
        <?php endif;?>

        <input class="field" type="text" placeholder="Course Name" id = "course_description" name = "course_description" required>
        <?php if(!empty($errors['course_description'])):?>
          <span id="error"><?=$errors['course_description']?></span>
        <?php endif;?>

        <button type="submit" class="field_btn" id="submit" name="course">Submit</button>
        <button type="button" class="field_btn_list" id="course_list" name="course_list">Course List</button>
        </form>
        </div>
      </div>
      <!--END COURSE MODAL-->

      <!--COURSE LIST-->
      <div class="modal-container" id="modal_container_courseList">
        <div class="courseList">
          <div class="recent-order" style="margin-left: 2% ;">
            <table>
              <thead>
              <tr>
              <th><h2>Course List</h2></th> 
              <th></th>
              <th><button class="close" id="closeCourseList"> <strong><span class="material-icons-sharp close_logo">close</span></strong> </button></th>
              </tr>
              <tr></tr>
              <tr>
              <th>Course Code<br>
                
              </th>
              <th>Course Name <br>
                
              </th>
              <th>Department <br>
              </th>
              </tr>
              </thead>
              <tbody>
                <?php
                if(!empty($course) && !empty($department)){
                  foreach($course as $key=>$value){
                  echo
                    "<tr>".
                    "<td>".$course[$key]['course_code']."</td>".
                    "<td>".$course[$key]['course_description']."</td>".
                    "<td>".$course[$key]['department_code']."</td>".
                    "</tr>";
                  }
                }
                else{
                  echo
                  "<tr>".
                  "<td>----</td>".
                  "<td>No Course Available</td>".
                  "<td>----</td>".
                  "</tr>";
                }
                ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <!--END COURSE LIST-->

      <!--CREATE ACCOUNT MODAL-->
      <div class="modal-container" id="modal_container_account">
        <div class="account" id="account">
          <span class="material-icons-sharp head">person_add</span>
          <button class="close" id="closeAccount"> <strong><span class="material-icons-sharp close_logo">close</span></strong> </button>
          <h2 style="margin-top:10px ; margin-bottom:10px;">Create an Account</h2>
          <div class="signup">
            <form method="POST">
              <div class="">
                <input type = hidden name="token" id="token" value=<?=User::createToken()?>>
                <select type="text" id="role_id"name="role_id" onchange="disableCourse(this)" required>
                  <option value="" disabled selected>User Type</option>
                  <option value="3">Faculty</option>
                  <option value="2">Student</option>
                </select>
                <?php if(!empty($errors['role_id'])):?>
                  <span id="error"><?=$errors['role_id']?></span>
                <?php endif;?>
                
                <input class="field" type="number" id="school_id" name="school_id" placeholder="ID number" required>
                <?php if(!empty($errors['school_id'])):?>
                  <span id="error"><?=$errors['school_id']?></span>
                <?php endif;?>
                
                <input class="field" type="text" id="firstname" name="firstname" placeholder="Firstname" required>
                  <?php if(!empty($errors['firstname'])):?>
                    <span id="error"><?=$errors['firstname']?></span>
                  <?php endif;?>
                  
                <input class="field" type="text" id="lastname" name="lastname" placeholder="Lastname" required>
                  <?php if(!empty($errors['lastname'])):?>
                    <span id="error"><?=$errors['lastname']?></span>
                  <?php endif;?>
                  
                <input class="field" type="text" id="email_verified" name="email_verified" placeholder="BUlSU email" required>
                  <?php if(!empty($errors['email_verified'])):?>
                    <span id="error"><?=$errors['email_verified']?></span>
                  <?php endif;?>
              </div>

              <div class="">
                <select type="text" id="department_id" name="department_id" required>
                  <option value="" disabled selected>Department</option>
                  <?php
                      if(!empty($department)){
                        foreach($department as $key=>$value){
                          echo "<option value=".$department[$key]['id'].">".$department[$key]['department_code']."</option>";
                        }
                      }
                      else echo "<option value=\"\">No Department Available</option>";
                  ?>
                </select>
                    <?php
                      if(!empty($error['department_id'])):?>
                      <span id="error"><?=$errors['department_id']?></span>
                    <?php endif;?>

                <select type="text" id="course_id" name="course_id" required>
                      <option value="" disabled selected>Course</option>
                      <?php
                      if(!empty($course)){
                        foreach($course as $key=>$value){
                          echo "<option value=".$course[$key]['id'].">".$course[$key]['course_code']." ".$course[$key]['course_description']."</option>";
                        }
                      }
                      else echo "<option value=\"\">No Department Available</option>";
                  ?>
                    
                </select>
                    <?php if(!empty($error['course_id'])):?>
                      <span id="error"><?=$errors['course_id']?></span>
                    <?php endif;?>

                <input class="field" type="password" id="password" name="password" placeholder="Password" required>
                <?php if(!empty($error['password'])):?>
                  <span id="error"><?=$errors['password']?></span>
                <?php endif;?>

                <input class="field" type="password" id="confirm_password" name="confirm_password" placeholder="Confirm Password" required>
                <?php if(!empty($error['password'])):?>
                  <span id="error"><?=$errors['password']?></span>
                <?php endif;?>

                <button type="submit" class="field_btn" id="submit" name="account">Create Account</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!--END OF CREATE ACCOUNT MODAL-->

      <!--UPLOAD MODAL-->
      <div class="modal-container" id="modal_container_upload">
        <div class="upload" id="upload">
          <div id="overlay"></div><span class="material-icons-sharp head">add</span>
            <button class="close" id="closeUpload"> <strong><span class="material-icons-sharp close_logo">close</span><strong> </button>
            <h2 style="margin-top:10px ; margin-bottom:10px;">Add Thesis/ Capstone</h2>
            <form method="POST" enctype="multipart/form-data">
              <input type = hidden name="token" id="token" value=<?=User::createToken()?>>
              <div class="">
                <input class="field" type="text" id="title" name="title" placeholder="Title" required>
                <?php if(!empty($errors['title'])):?>
                  <span id="error"><?=$errors['title']?></span>
                <?php endif;?>

                <input class="field" type="text" id="researchers" name="researchers" placeholder="Researcher" required>
                <?php if(!empty($errors['researchers'])):?>
                  <span id="error"><?=$errors['researchers']?></span>
                <?php endif;?>

                <input class="field" type="text" id="adviser" name="adviser" placeholder="Adviser" required>
                <?php if(!empty($errors['adviser'])):?>
                  <span id="error"><?=$errors['adviser']?></span>
                <?php endif;?>

                <input class="field" type="date" id="date_research" name="date_research" required>
                <?php if(!empty($errors['adviser'])):?>
                  <span id="error"><?=$errors['adviser']?></span>
                <?php endif;?>

                <select type="text" id="type" name="type" required>
                  <option value="" disabled selected>Type</option>
                  <option value="Capstone">Capstone</option>
                  <option value="Thesis">Thesis</option>
                </select>
                <?php if(!empty($errors[''])):?>
                  <span id="error"><?=$errors['']?></span>
                <?php endif;?>

                <select type="text" id="department_id" name="department_id" required>
                  <option value="" disabled selected>Department</option>
                  <?php if(!empty($department)):?>
                      <?php foreach($department as $key => $value):?>
                          <option value="<?=$department[$key]['id']?>"><?=$department[$key]['department_code']?></option>
                      <?php endforeach;?>
                  <?php else:?>
                  <?php endif;?>
                </select>
                <?php if(!empty($errors['department_id'])):?>
                  <span id="error"><?=$errors['department_id']?></span>
                <?php endif;?>

                <select type="text" id="course_id" name="course_id" required>
                  <option value="" disabled selected>Course</option>
                  <?php if(!empty($course)):?>
                      <?php foreach($course as $key => $value):?>
                          <option value="<?=$course[$key]['id']?>"><?=$course[$key]['course_description']?></option>
                      <?php endforeach;?>
                  <?php else:?>
                  <?php endif;?>
                </select>
                <?php if(!empty($errors['course_id'])):?>
                  <span id="error"><?=$errors['course_id']?></span>
                <?php endif;?>
              </div>

              <div class="">
                <div class="field">                                                 
                    <label for="picture"><i class="uil uil-file-upload" style="cursor: pointer;" required></i><span class="label" style="cursor:pointer;">Upload a PDF version of Thesis/ Capstone</span></label>
                    <input type="file" id="picture" name="picture" onchange="getImage(this.value);" accept=".pdf" required>
                    
                    <span  class="span-validate" onchange="getImage(this.value);" id="file" name="file"></span>
                    <!-- Upload a PDF version of Thesis / Capstone) -->
                    <?php if(!empty($errors['picture'])):?>
                      <span id="error"><?=$errors['picture']?></span>
                    <?php endif;?>
                </div>

                <div class="field">                                            
                    <label for="picture1"><i class="uil uil-file-upload" style="cursor: pointer;" required></i><span class="label" style="cursor:pointer;">Upload a PDF version of Abstract</span></label>
                    <input type="file" id="picture1" name="picture1" onchange="getImages(this.value);" accept=".pdf" required>
                    <span  class="span-validate" onchange="getImages(this.value);" id="file1" name="file1"></span>
                    <!-- Upload a PDF version of your student ID (front and back) -->
                </div>
                
                

                <textarea class="field" id="description" name="description" placeholder="Description" required></textarea>
                <?php if(!empty($errors['description'])):?>
                  <span id="error"><?=$errors['description']?></span>
                <?php endif;?>

                <button type="submit" class="field_btn" id="submit" name="upload_file" style="margin-top:5px ;">Upload File</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!--END OF UPLOAD FILE MODAL-->

  </div><!--end right-->
</div><!--end container-->
<?php $this->view('includes/footer')?>
