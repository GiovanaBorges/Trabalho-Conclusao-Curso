const question_number = document.querySelector(".number_question");
const question_text = document.querySelector(".lead_text");
const question_options = document.querySelector(".list_options");


let question_counter = 0;
let current;
let questions = [];
let options = [];

function CounterQuestion(){
    const totalQuestions = quiz.length;
    for(let i=0;i<totalQuestions;i++){
       
        questions.push(quiz[i]);
        
    }
   
}

function getnewQuestion(){
    question_number.innerHTML = 'Pergunta : '+(question_counter+1) +  " / " + quiz.length;
//    const question_index = questions[Math.floor(Math.random() * questions.length)];

        
        const question_index = questions[question_counter]; 
        current = question_index;
        
        const option_len = current.options.length
       
        const index1 = questions.indexOf(question_index);
       
        
        questions.splice(index1,1);

       //console.log(current.options);

        //console.log(question_index);
       // console.log(questions);


        
     //   console.log(current.options);

   
        for(let i=0;i<option_len;i++){
            options.push(i);
            
        }
        

        tetao();
        

     function  Panel(){
            for(let i=0;i<option_len;i++){
                var popUpDiv = document.getElementsById("list");
                var div = document.createElement("div");
                div.innerHTML = "options[i]";
                div.className = "lista";

                popUpDiv.appendChild(div);
            }
          
        }

        function tetao(){
            for(let i=0;i<option_len;i++){
                question_text.innerHTML = current.q;
                document.querySelector('#list').innerHTML = options[i];
            }
        }

      
        
        
        question_counter++; 
}

function next(){
    if(question_counter == quiz.length){
        console.log("acaboui");
    }else{
        getnewQuestion();
    }
}
window.onload = function(){
    CounterQuestion();
    getnewQuestion();
    tetao();
}
