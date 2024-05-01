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

//            document.getElementById("reloadButton").addEventListener("click", function () {
//
//                window.location.reload();
//            });
//            function changeText(id, price) {
//
//                var tags = document.getElementsByName('identifier').length;
//                console.log(tags);
//
//                var qt = document.getElementById("textInput" + id).value;
//                var total = 0;
//                document.getElementById("subPrice" + id).textContent = "Rs." + price * parseInt(qt) + ".00";
//
//                for (var i = 1; i <= tags; i++) {
//
//                    total += extractNumber((document.getElementById("subPrice" + i).textContent));
//                }
//
//                document.getElementById("subTot").textContent = "Rs." + total + ".00";
//                document.getElementById("tot").textContent = "Rs." + total + ".00";
//            }
//
//            function extractNumber(str) {
//
//                var regex = /\d+(?:\.\d+)?/;
//                var match = regex.exec(str);
//                return parseFloat(match[0]);
//            }
