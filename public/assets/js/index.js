const themeToggler = document.querySelector(".theme-toggler");

themeToggler.addEventListener('click', () => {
   document.body.classList.toggle('dark-theme-variables');
})

const openDept = document.getElementById('dept');
const closeDept = document.getElementById('closeDept');
const openDeptList = document.getElementById('dept_list');
const closeDeptList = document.getElementById('closeDeptList');

const openCourse = document.getElementById('course');
const closeCourse = document.getElementById('closeCourse');
const openCourseList = document.getElementById('course_list');
const closeCourseList = document.getElementById('closeCourseList');

const openAccount = document.getElementById('account');
const closeAccount = document.getElementById('closeAccount');

const openUpload = document.getElementById('upload');
const closeUpload = document.getElementById('closeUpload');

/*const openMessage = document.getElementById('submit');
const closeMessage = document.getElementById('done');

const openCite = document.getElementById('citation');
const closeCite = document.getElementById('closeCite');*/

openDept.addEventListener('click',() =>{
   modal_container_dept.classList.add('show');
});
closeDept.addEventListener('click',() =>{
   modal_container_dept.classList.remove('show');
});
openDeptList.addEventListener('click',() =>{
   modal_container_deptList.classList.add('show');
});
closeDeptList.addEventListener('click',() =>{
   modal_container_deptList.classList.remove('show');
});

openCourse.addEventListener('click',() =>{
   modal_container_course.classList.add('show');
});
closeCourse.addEventListener('click',() =>{
   modal_container_course.classList.remove('show');
});
openCourseList.addEventListener('click',() =>{
   modal_container_courseList.classList.add('show');
});
closeCourseList.addEventListener('click',() =>{
   modal_container_courseList.classList.remove('show');
});

openAccount.addEventListener('click',() =>{
   modal_container_account.classList.add('show');
});
closeAccount.addEventListener('click',() =>{
   modal_container_account.classList.remove('show');
});

openUpload.addEventListener('click',() =>{
   modal_container_upload.classList.add('show');
});
closeUpload.addEventListener('click',() =>{
   modal_container_upload.classList.remove('show');
});

/*openCite.addEventListener('click',() =>{
   modal_container_Cite.classList.add('show');

});
closeCite.addEventListener('click',() =>{
   modal_container_Cite.classList.remove('show');
});*/

var diplay = document.getElementById('file');

    function getImage(imagename)
    {        
        var image=diplay.append(imagename.match( /[\/\\]([\w\d\s\.\-\(\)]+)$/)[1]);
        document.getElementById("file").value = image;
        console.log(image);
    }

var diplays = document.getElementById('file1');

    function getImages(imagenames)
    {        
        var images=diplays.append(imagenames.match( /[\/\\]([\w\d\s\.\-\(\)]+)$/)[1]);
        document.getElementById("file1").value = images;
        console.log(images);
    }



window.addEventListener("load", function(){
   setTimeout(
       function open(event){
           document.querySelector(".container1").style.display = "block";
           document.querySelector("#over_lay").style.display = "block";
       },
       1000
   )
});
document.querySelector("#done").addEventListener("click", function(){
   document.querySelector(".container1").style.display = "none";
   document.querySelector("#over_lay").style.display = "none";
});


function disableCourse(course){
      if(course.value==2){
          document.getElementById('course_id').disabled=false;
      }
      else{
          document.getElementById('course_id').disabled=true;
      }
  
  };
