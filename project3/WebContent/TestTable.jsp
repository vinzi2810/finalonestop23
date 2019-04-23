<!DOCTYPE html>
<html>
   <head>
      <title>jQuery Add Table Rows</title>
      <style>
         table{
           width: 100%;
           margin: 25px 0;
           border-collapse: collapse;
         }
         table, th, td{
           border: 1px solid #6C220B;
         }
         table th, table td{
           padding: 8px;
           text-align: left;
         }
      </style>
      <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script>
         $(document).ready(function(){
         
             $(".row").click(function(){
         
                 var name = $("#name").val();
         
                 var subject = $("#subject").val();
         
                 var markup = "<tr><td><input type='checkbox' name='record'></td><td>" + name + "</td><td>" + subject + "</td></tr>";
         
                 $("table tbody").append(markup);
         
             });         
         });    
      </script>
   </head>
   <body>
      <form>
         <input type="text" id="name" placeholder="Enter Name">
         <input type="text" id="subject" placeholder="Enter Subject">
         <input type="button" class="row" value="Click to Add Row">
      </form>
      <table>
         <thead>
            <tr>
               <th>Choose</th>
               <th>Name</th>
               <th>Subject</th>
            </tr>
         </thead>
         <tbody>
            <tr>
               <td><input type="checkbox" name="result"></td>
               <td>Amit</td>
               <td>Java</td>
            </tr>