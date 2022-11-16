//  ============== DEPARTMENT CHART ============== 

const departmentChart = document.getElementById('departmentChart').getContext('2d');
const departmentData =$.ajax({
    url:"data.php",
    method:"POST",
    data:{action:'fetch'},
    dataType:"JSON",
    success:function(data){
        var department = [];
        var total = [];


        for(var ctr = 0; ctr < data.length; ctr++){
            department.push(data[count].language);
            total.push(data[count].total);
            console.log(department.push(data[count].language));
        };
    }
});
const departmentListofColor = ['#0263FF','#FF7723','#8E30FF','#6DF817','#F815A3','#C46B6B'];
const departmentBackgroundcolor = [];

for(i = 0;i < departmentData.length; i++) {
    departmentBackgroundcolor[i] = departmentListofColor[i];       
}

const depChart = new Chart(departmentChart, {
    type: 'doughnut',
    data: {        
        datasets: [{            
            data: departmentData,
            backgroundColor: departmentBackgroundcolor,
            borderColor: ['transparent'],
            cutout:'80%',            
        }]
    },
     options: {
        plugins: {
            tooltip: {                
                 callbacks: {
                    
                }
            }
        }
    }
});

// ========== DEPARTMENT LEGEND =============== 

const listofDepartment = ["GATE", "BAM", "IIT"];
const departmentList = document.getElementById("department-list");

function departmentLegend() {        
    for (i=0; i < listofDepartment.length; i++) {    
        var departmentLegendContainer = document.createElement("div");
        var departmentLegend = document.createElement("label");
        var departmentlabel = document.createElement("span");        
        var departmentLegendContent = document.createTextNode("");
        departmentLegend.appendChild(departmentLegendContent);
        departmentLegend.style.backgroundColor = departmentListofColor[i];
        departmentLegendContainer.appendChild(departmentLegend);
        departmentLegendContainer.appendChild(departmentlabel).innerHTML += listofDepartment[i] + " Department";
        departmentList.appendChild(departmentLegendContainer);      
    }    
}
departmentLegend();

//  ============== GATE CHART ============== 

const gateChart = document.getElementById('gateChart').getContext('2d');
const gateData = [30,20,15, 5, 30];
const gateListofColor = ['#0263FF','#FF7723','#8E30FF','#6DF817','#F815A3','#C46B6B'];
const gateBackgroundcolor = [];

for(i = 0;i < gateData.length; i++) {
    gateBackgroundcolor[i] = gateListofColor[i];       
}

const gChart = new Chart(gateChart, {
    type: 'doughnut',
    data: {        
        datasets: [{            
            data: gateData,
            backgroundColor: gateBackgroundcolor,
            borderColor: ['transparent'],
            cutout:'80%',            
        }]
    },
     options: {
        plugins: {
            tooltip: {                
                 callbacks: {
                    
                }
            }
        }
    }
});

// ========== GATE LEGEND =============== 

const listofGate = [
    "Bachelor of  Secondary EducationMajor in Sciences", 
    "Bachelor of  Secondary EducationMajor in English",
    "Bachelor of  Secondary EducationMajor in Mathematics",
    "Bachelor of  Secondary Education Major in Filipino",
    "Bachelor of  Secondary Education Major in Social Studies",
];
const gateList = document.getElementById("gate-list");

function gateLegend() {        
    for (i=0; i < listofGate.length; i++) {    
        var gateLegendContainer = document.createElement("div");
        var gateLegend = document.createElement("label");
        var departmentLabel = document.createElement("span");        
        var departmentLegendContent = document.createTextNode("");
        gateLegend.appendChild(departmentLegendContent);
        gateLegend.style.backgroundColor = gateListofColor[i];
        gateLegendContainer.appendChild(gateLegend);
        gateLegendContainer.appendChild(departmentLabel).innerHTML += listofGate[i] + " Department";
        gateList.appendChild(gateLegendContainer);      
    }    
}
gateLegend();

//  ============== BAM CHART ==============  


const bamChart = document.getElementById('bamChart').getContext('2d');
const bamData = [30,20,15, 5, 30];
const bamListofColor = ['#0263FF','#FF7723','#8E30FF','#6DF817','#F815A3','#C46B6B'];
const bamBackgroundcolor = [];

for(i = 0;i < gateData.length; i++) {
    bamBackgroundcolor[i] = bamListofColor[i];       
}

const bChart = new Chart(bamChart, {
    type: 'doughnut',
    data: {        
        datasets: [{            
            data: bamData,
            backgroundColor: bamBackgroundcolor,
            borderColor: ['transparent'],
            cutout:'80%',            
        }]
    },
     options: {
        plugins: {
            tooltip: {                
                 callbacks: {
                    
                }
            }
        }
    }
});

// ========== BAM LEGEND =============== 

const listofBam = [
    "Bachelor of  Secondary EducationMajor in Sciences", 
    "Bachelor of  Secondary EducationMajor in English",
    "Bachelor of  Secondary EducationMajor in Mathematics",
    "Bachelor of  Secondary Education Major in Filipino",
    "Bachelor of  Secondary Education Major in Social Studies",
];
const bamList = document.getElementById("bam-list");

function bamLegend() {        
    for (i=0; i < listofBam.length; i++) {    
        var bamLegendContainer = document.createElement("div");
        var bamLegend = document.createElement("label");
        var departmentLabel = document.createElement("span");        
        var departmentLegendContent = document.createTextNode("");
        bamLegend.appendChild(departmentLegendContent);
        bamLegend.style.backgroundColor = bamListofColor[i];
        bamLegendContainer.appendChild(bamLegend);
        bamLegendContainer.appendChild(departmentLabel).innerHTML += listofBam[i] + " Department";
        bamList.appendChild(bamLegendContainer);      
    }    
}
bamLegend();

//  ============== IIT CHART ==============  

const iitChart = document.getElementById('iitChart').getContext('2d');
const iitData = [30,20,15, 5, 30];
const iitListofColor = ['#0263FF','#FF7723','#8E30FF','#6DF817','#F815A3','#C46B6B'];
const iitBackgroundcolor = [];

for(i = 0;i < gateData.length; i++) {
    iitBackgroundcolor[i] = iitListofColor[i];       
}

const iChart = new Chart(iitChart, {
    type: 'doughnut',
    data: {        
        datasets: [{            
            data: iitData,
            backgroundColor: iitBackgroundcolor,
            borderColor: ['transparent'],
            cutout:'80%',            
        }]
    },
     options: {
        plugins: {
            tooltip: {                
                 callbacks: {
                    
                }
            }
        }
    }
});

// ========== BAM LEGEND =============== 

const listofIIT = [
    "Bachelor of  Secondary EducationMajor in Sciences", 
    "Bachelor of  Secondary EducationMajor in English",
    "Bachelor of  Secondary EducationMajor in Mathematics",
    "Bachelor of  Secondary Education Major in Filipino",
    "Bachelor of  Secondary Education Major in Social Studies",
];
const iitList = document.getElementById("iit-list");

function iitLegend() {        
    for (i=0; i < listofIIT.length; i++) {    
        var iitLegendContainer = document.createElement("div");
        var iitLegend = document.createElement("label");
        var departmentLabel = document.createElement("span");        
        var departmentLegendContent = document.createTextNode("");
        iitLegend.appendChild(departmentLegendContent);
        iitLegend.style.backgroundColor = iitListofColor[i];
        iitLegendContainer.appendChild(iitLegend);
        iitLegendContainer.appendChild(departmentLabel).innerHTML += listofIIT[i] + " Department";
        iitList.appendChild(iitLegendContainer);      
    }    
}
iitLegend();



/*  SAMPLE FOR LEGEND
var colorList1 = {t1: 'red', t2: 'green', t3: 'blue'};

colorize = function(colorList) {
    var container = document.getElementById('container');
  
    for (var key in colorList) {
        var boxContainer = document.createElement("DIV");
        var box = document.createElement("DIV");
        var label = document.createElement("SPAN");

        label.innerHTML = key;
        box.className = "box";
        box.style.backgroundColor = colorList[key];

        boxContainer.appendChild(box);
        boxContainer.appendChild(label);

        container.appendChild(boxContainer);

   }
}

colorize(colorList);
 */
$(document).ready(function(){

        $.ajax({
            url:"/bulsu v1/app/controllers/Dashboard.php",
            method:"POST",
            dataType:"JSON",
            success:function(data){
                alert(data);
                var department = [];
                var total = [];
                var color = [];

                for(var ctr = 0; ctr < data.length; ctr++){
                    department.push(data[count].language);
                    total.push(data[count].total);
                    color.push(data[count].color);
                    console.log(department.push(data[count].language));
                }
                
                var chart_data = {
                    label:department,
                    datasets:[{
                        label: 'Department',
                        color:'#fff',
                        data:total
                    }]
                };
                var options = {
                    responsive:true,
                    scales:{
                        yAxes:[{
                            ticks:{
                                min:0
                            }
                        }]
                    }
                };
                var group_chart1 = $('#departmentChart');
                var graph1 = new Chart(group_chart1,{
                    type:"doughnut",
                    data:chart_data,
                    options:options
                });
            }
        });
});