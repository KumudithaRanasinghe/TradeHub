/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function sendPostRequest(id) {
    var form = document.createElement("form");
    form.method = "POST";
    form.action = "DeleteItemServlet";
    var hiddenField = document.createElement("input");
    hiddenField.type = "hidden";
    hiddenField.name = "id";
    hiddenField.value = id;
    form.appendChild(hiddenField);
    document.body.appendChild(form);
    form.submit();
    document.body.removeChild(form);
}

