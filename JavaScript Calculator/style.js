/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */
/* global newTextArr, text, textArr */



            //Execute the function after the page has been loaded
            window.onload = function(){

            // Data containers
            var left = 0;   //First input variable
            var right = 0;  //Second input variable
            var sum = 0;    //Results  
            var numb = 0;   //This variable is used to limit the input of decimal points     
            // Get id and return
            function $(id){
                return document.getElementById(id);
            }
            // Operational function
             function operation(id){            
                if( $("box").value !== "0"){
                    if(left === 0)
                    {
                        $("box").value = $("box").value + $(id).value;
                        left = parseFloat($("box").value);
                    }
                }
                //numb converts to number type so that the decimal point can be entered again
                numb = 0;
            }

            // Digital disk functions
            function figure(id){ 
            
                // Determine if the variable entered for the first time has a value
                if(left === 0)
                {
                    // Change the default value of "value"
                    if ($("box").value === "0" ) {
                        $("box").value = $(id).value; 
                    }else{
                        $("box").value = $("box").value + $(id).value;    
                    }                                
                }else{
                    $("box").value = $("box").value + $(id).value;
                    var str = $("box").value;
                    var num = "";                    
                    // Get the second number entered
                    for (var i = 0; i < str.length; i++) {
                        // Judging addition, subtraction, multiplication or division
                        if(str[i]=== "+"){
                            for (var j = i + 1; j < str.length; j++) {
                                num+=str[j];
                                
                            };
                            right = parseFloat(num);
                        }else if(str[i]=== "-"){
                            for (var j = i + 1; j < str.length; j++) {
                                num+=str[j];
                                
                            };
                            right = parseFloat(num);
                        }
                        else if(str[i]=== "*"){
                            for (var j = i + 1; j < str.length; j++) {
                                num+=str[j];
                                
                            };
                            right = parseFloat(num);
                        }
                        else if(str[i]=== "/"){
                            for (var j = i + 1; j < str.length; j++) {
                                num+=str[j];
                                
                            };
                            right = parseFloat(num);
                        }
                    };                    
                }

                // Empty all data  
                if(sum !== 0){
                    left = 0;
                    right = 0;
                    sum = 0;
                    numb = 0;
                    $("box").value = $(id).value;
                }
            
            }


// Numeric keypad area----------------------------------------------------------start
            $("one").onclick = function(){ 
                figure("one");
            }
            $("two").onclick = function(){ 
                figure("two");
            }
            $("three").onclick = function(){ 
                figure("three");
            }
            $("four").onclick = function(){ 
                figure("four");
            }
            $("five").onclick = function(){ 
                figure("five");
            }
            $("six").onclick = function(){ 
                figure("six");
            }
            $("seven").onclick = function(){ 
                figure("seven");
            }
            $("eight").onclick = function(){ 
                figure("eight");
            }
            $("nine").onclick = function(){ 
                figure("nine");
            }
            $("zero").onclick = function(){ 
                figure("zero");
            }
 
// Numeric keypad area----------------------------------------------------------finish
            



//Functional areas-----------------------------------------------------------start

            // Addtion
            $("add").onclick = function(){             
                operation("add");
            }


            // Subtraction
            $("reduce").onclick = function(){             
                operation("reduce");
            }

            // Multiplication
            $("ride").onclick = function(){
                operation("ride");
            }
            
            // Division
            $("division").onclick = function(){
                operation("division");
            }

            // Decimal point
            $("round").onclick = function(){
                // Restrict decimal point input
                if(numb === 0 && sum === 0){ //numb value equals 0 type equals number                        
                    $("box").value = $("box").value + $("round").value;
                    numb = ($("box").value); //numb is assigned to a string
                }

            }

            // Clearance
            $("res").onclick = function(){
                if($("box").value !== "0")
                {                        
                    left = 0;
                    right = 0;
                    sum = 0;
                    numb = 0;
                    $("box").value = "0";
                }
            }

            // Request results
            $("sum").onclick = function(){  
                var symbol = "";           
                if(left !== 0 && right !== 0){
                    for (var i = 0; i < $("box").value.length; i ++ ) {
                        symbol = $("box").value[i];
                        if(symbol === "+"){
                            sum = left + right;
                            $("box").value = sum;
                        }else if(symbol === "-"){
                            sum = left - right;
                            $("box").value = sum;
                        }
                        else if(symbol === "*"){
                            sum = left * right;
                            $("box").value = sum;

                        }
                        else if(symbol === "/"){
                            sum = left / right;
                            $("box").value = sum;
                        }
                    };
                }                            
            }
            
        }

// Functional areas--------------------------------------------------------------------------finish
