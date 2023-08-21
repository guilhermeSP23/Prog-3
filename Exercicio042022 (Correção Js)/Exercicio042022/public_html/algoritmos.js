/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validarRadioButtons(x) {
    let controle = true;
    for (i=0; i<x.length; i++) {
        if (x[i].checked) {
            controle = false;
            break;
        }
    }
    return controle;
}

function validar() {
    var cpf = document.getElementById('cpf');
    var dataNasc = document.getElementById('dataNasc');
    var sexoF = document.getElementById('sexoF');
    var sexoM = document.getElementById('sexoM');
    var peso = document.getElementById('peso');
    var altura = document.getElementById('altura');
    var ret = true;
    
    var pattern = /^\d{11}?$/;
    if (cpf.value != '' && !pattern.test(cpf.value)) {
        alert('CPF deve conter 11 dígitos numéricos!!!');
        cpf.style = 'background-color: red';
        ret = false;
    } else {
        cpf.style = 'background-color: none';
    }
    
    /*let controle = validarRadioButtons(document.getElementsByName('sexo'));
    if (controle) {
        alert('Sexo é um campo obrigatório!!!');
    }*/
    
    if (sexoF.checked == false && 
        sexoM.checked == false) {
        alert('Sexo é um campo obrigatório!!!');
        sexoF.style = 'background-color: red';
        ret = false;
    } else {
        sexoF.style = 'background-color: none';
    }
    
    if (altura.value == '') {
        alert('Altura é um campo obrigatório!!!');
        altura.style = 'background-color: red';
        ret = false;
    } else {
        var a = altura.value.replace(",", ".");
        if (isNaN(a) ||
            parseFloat(a) <= 0) {
            alert('Altura deve ser um número válido e maior que 0!!!');
            altura.style = 'background-color: red';
            ret = false;
        } else {
            altura.style = 'background-color: none';
        }
    }
    
    if (peso.value == '') {
        alert('Peso é um campo obrigatório!!!');
        peso.style = 'background-color: red';
        ret = false;
    } else {
        var p = peso.value.replace(",", ".");
        if (isNaN(p) ||
            parseFloat(p) <= 0) {
            alert('Peso deve ser um número válido e maior que 0!!!');
            peso.style = 'background-color: red';
            ret = false;
        } else {
            peso.style = 'background-color: none';
        }
    }
    
    var pattern = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/;
    if (dataNasc.value != '' && !pattern.test(dataNasc.value)) {
        alert('Data de nascimento deve conter um valor no formato dd/mm/yyyy!!!');
        dataNasc.style = 'background-color: red';
        ret = false;
    } else {
        dataNasc.style = 'background-color: none';
    }
    
        
    return ret;
}
