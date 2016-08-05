<!DOCTYPE HTML>

<html>
<head>
    <title>Cadastro Pensão</title>
    <link rel="stylesheet" type="text/css" href="../webroot/css/style.css">
</head>


<body>

<div id="titulo">Galera da Pensão</div>



<div id="login-box">

    <div id="login-box-interno">

        <div id="login-box-label">LOGIN</div>

        <div class="input-div">
            <input type="text" placeholder="Digite seu e-mail..." />
        </div>

        <div class="input-div">
            <input type="text" placeholder="Digite a sua senha..." />
        </div>

        <div id="botoes">
            <div id="botao">Acessar</div>
            <div id="lembrar-senha"><input type="checkbox"/> Lembrar senha</di>

            </div>

        </div>

    </div>


</body>


<style>

    #titulo{
        font-family: ;
        font-size: 70px;
        color: #333333;
        text-shadow: 5px 1px 6px;
        text-align: center;
        height: 45px;
        margin: 65px;

    }


    #login-box{
        background-color: #FFFFFF;
        width: 380px;
        height: 260px;
        margin: 140px auto 0px;
        border-radius: 5px;

    }

    #login-box-interno{
        width: 360px;
        height: 240px;
        background-color: #CCCCCC;
        position: absolute;
        margin: 10px;
        border-radius: 5px;
        box-shadow: 0px 0px 5px black;
        overflow: hidden;

    }

    #login-box-label{
        height: 45px;
        text-align: center;
        font: bold 16px/45px sans-serif;
        border-top-left-radius: 5px;
        border-top-right-radius: 5px;
        box-shadow: 1px 0px 3px white;
        color: #990000;
        text-shadow: 3px 0px 3px white;

        /* MUDA A CAIXA ONDE TEM A ESCRITA 'LOGIN' */

        background: rgb(238,238,238);
        background: -moz-linear-gradient(top,  rgba(238,238,238,1) 0%, rgba(204,204,204,1) 100%);
        background: -webkit-linear-gradient(top,  rgba(238,238,238,1) 0%,rgba(204,204,204,1) 100%);
        background: linear-gradient(to bottom,  rgba(238,238,238,1) 0%,rgba(204,204,204,1) 100%);
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#eeeeee', endColorstr='#cccccc',GradientType=0 );

    }

    .input-div{
        margin: 16px;
        padding: 5px;
        background-color: #996600;
        border-radius: 3px;
    }
    .input-div input{
        width: 310px;
        height: 35px;
        padding-left: 5px;
        font: normal 13px sans-serif;
        color: #aeaeae;
        border-radius: 3px;
        border: 1px solid #bfc4c6;
        outline: none;
    }
    .input-div:hover{
        background-color: #CC9933;
    }
    #input-senha{
        margin-top: -10px;
    }
    #botoes{
        width: 310px;
        margin-left: 25px;
    }
    #botao{
        float: right;
        background-color: #CC9933;
        padding: 5px 15px;
        font: bold 12px sans-serif;
        border-radius: 20px;

        background: rgb(153,102,0);
        background: -moz-linear-gradient(top,  rgba(153,102,0,1) 0%, rgba(204,153,51,1) 50%, rgba(204,153,51,1) 71%, rgba(204,153,51,1) 75%, rgba(153,102,0,1) 100%);
        background: -webkit-linear-gradient(top,  rgba(153,102,0,1) 0%,rgba(204,153,51,1) 50%,rgba(204,153,51,1) 71%,rgba(204,153,51,1) 75%,rgba(153,102,0,1) 100%);
        background: linear-gradient(to bottom,  rgba(153,102,0,1) 0%,rgba(204,153,51,1) 50%,rgba(204,153,51,1) 71%,rgba(204,153,51,1) 75%,rgba(153,102,0,1) 100%);
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#996600', endColorstr='#996600',GradientType=0 );

        box-shadow: 0px 0px 10px #c9c9c9;

    }
    #botao:hover{

        background: rgb(153,102,0);
        background: -moz-linear-gradient(top,  rgba(153,102,0,1) 0%, rgba(204,153,51,1) 0%, rgba(204,153,51,1) 0%, rgba(204,153,51,1) 100%, rgba(204,153,51,1) 100%, rgba(153,102,0,1) 100%);
        background: -webkit-linear-gradient(top,  rgba(153,102,0,1) 0%,rgba(204,153,51,1) 0%,rgba(204,153,51,1) 0%,rgba(204,153,51,1) 100%,rgba(204,153,51,1) 100%,rgba(153,102,0,1) 100%);
        background: linear-gradient(to bottom,  rgba(153,102,0,1) 0%,rgba(204,153,51,1) 0%,rgba(204,153,51,1) 0%,rgba(204,153,51,1) 100%,rgba(204,153,51,1) 100%,rgba(153,102,0,1) 100%);
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#996600', endColorstr='#996600',GradientType=0 );

        cursor: pointer;

    }

    #lembrar-senha{
        font: normal 12px sans-serif;
    }

    #lembrar-senha{
        float: Left;
        font: bold 12px sans-serif;
    }
    .input-botao:hover{
        background-color: #CC9933;
    }


</style>