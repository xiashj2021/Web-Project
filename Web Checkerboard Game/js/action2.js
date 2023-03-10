/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */
var pieces = [
    [0, -1, 0, -1, 0, -1, 0, -1],
    [-1, 0, -1, 0, -1, 0, -1, 0],
    [0, -1, 0, -1, 0, -1, 0, -1],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [1, 0, 1, 0, 1, 0, 1, 0],
    [0, 1, 0, 1, 0, 1, 0, 1],
    [1, 0, 1, 0, 1, 0, 1, 0]
];

function showGamePieces(rows, cols) {//Define a function to show pieces   
     var member2= document.getElementById("member2");
    member2.innerText="Zhongquan Zhou";
    for (var i = 0; i < rows; i++) {
        for (var j = 0; j < cols; j++) {
            var cellID = getCellID(8, i, j);
            var tdElement=document.getElementById(cellID);
            if (pieces[i][j] === -1) {
                tdElement.className = 'redpiece';
            } else if (pieces[i][j] === 1) {
                tdElement.className = 'blackpiece';
            }
        }
    } 
}