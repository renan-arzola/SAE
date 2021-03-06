﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="sae.login" %>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>SAE - Login</title>
  
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
    <form runat="server">
  <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Iniciar Sesión</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">registrarse</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Nombre de Usuario</label>
					<asp:TextBox ID="usuarioTxt" class="input" runat="server"></asp:TextBox>
				</div>
				<div class="group">
					<label for="pass" class="label">Contraseña</label>
					<asp:TextBox ID="passTxt" class="input" runat="server" TextMode="Password"></asp:TextBox>
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Mantener Sesión Iniciada</label>
				</div>
				<div class="group">
					<asp:Button ID="iniciarBtb" class="button" runat="server" Text="Iniciar" OnClick="iniciarBtb_Click" />
				</div>
                
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">No Recuerdas Tu Contraseña?</a>
                    <asp:Label ID="alerta1" runat="server" Text=""></asp:Label>
				</div>
			</div>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Repeat Password</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Email Address</label>
					<input id="pass" type="text" class="input">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</label>
                    
				</div>
			</div>
		</div>
	</div>
</div>
</form>  
  
</body>
</html>

