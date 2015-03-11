<%-- 
    Document   : index
    Created on : 23/02/2015, 05:58:20 PM
    Author     : kennross
--%>

<%@page import="modelo.dtos.DepartamentoDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.daos.DepartamentoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
        <script type="text/javascript" src="js/jquery-1.11.2.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/validaciones.js"></script>
        <script type="text/javascript" src="js/validacionesAjax.js"></script>
        <script type="text/javascript" src="js/ajax.js"></script>
        <title>Inicio | Farmer's Market</title>
    </head>
    <body>
        <div class="container">
            <!-- Banner Farmer's Market -->
            <div class="row">
                <div class="col-md-12">
                    <img src="img/banner.jpg" alt="Banner de Farmer's Market">
                </div>
            </div>
            <!-- Fin del Banner  -->            

            <!-- Mensajes de alertas -->
            <%
                if (request.getParameter("msg") != null && request.getParameter("tipoAlert") != null) {
            %>
            <div class="alert alert-<%= request.getParameter("tipoAlert")%>" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <p class="text-center"><%= request.getParameter("msg")%></p>
            </div>
            <%
                }
            %>            
            <!-- Fin de mensajes de alertas -->

            <!-- Contenedor principal -->
            <div class="row">
                <!-- Contenedor de la izquierda - Slide -->
                <div class="col-md-8">
                    <!-- Slider - Carousel -->
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Direccionamiento de las imágenes -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>
                        <!-- Fin de direccionamiento de las imágenes -->

                        <!-- Imágenes para diapositivas -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="img/carousel/wallhaven-102789.jpg" alt="...">
                                <div class="carousel-caption">
                                    Los mejores productos jamás vendidos
                                </div>
                            </div>
                            <div class="item">
                                <img src="img/carousel/wallhaven-107830.jpg" alt="...">
                                <div class="carousel-caption">
                                    Selección de los mejores cultivos
                                </div>
                            </div>
                            <div class="item">
                                <img src="img/carousel/wallhaven-9277.jpg" alt="...">
                                <div class="carousel-caption">
                                    No había existido mejor sitio que éste
                                </div>
                            </div>
                        </div>
                        <!-- Fin de envoltura para diapositivas -->

                        <!-- Controles -->
                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Anterior</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">S</span>
                        </a>
                        <!-- Fin de controles -->
                    </div>
                    <!-- Fin de Slider - Carousel -->
                </div>
                <!-- Fin de contenedor de la izquierda - Slide -->


                <!-- Contenedor de la derecha - Page Header -->
                <div class="col-md-4">
                    <!-- Título principal de bienvenida -->
                    <div class="page-header">
                        <h1>Bienvenido(a) <br><small>a Farmer's Market <a href="#"><img src="img/flag/ing/flag-ingles-16.png" alt="Cambiar idioma a Inglés" title="Cambiar idioma a Inglés"></a> <a href="#"><img src="img/flag/spa/flag-spanis16.png" alt="Cambiar idioma a Español" title="Cambiar idioma a Español"></a></small></h1>                      
                    </div>
                    <!-- Título principal de bienvenida -->
                    <div class="caption">
                        <h3 class="text-center">El sitio perfecto para encontrar y vender tus productos</h3>
                        <p class="text-justify">
                            Aquí podrás encontrar los procesos de oferta y demanda 
                            que se ven en la cadena de comercialización agricola que se
                            vive en Colombia.
                        </p>

                        <p class="text-center text-success">
                            <mark>¿Quieres hacerte parte de la comunidad?<br> ¿Qué estás esperando?</mark>
                        </p>
                        <br>
                        <p>
                            <a href="#" class="btn btn-success" role="button" data-toggle="modal" data-target="#modalRegistrarse">Registrárse en Farmer's Market</a>
                            <a href="#" class="btn btn-primary" role="button" data-toggle="modal" data-target="#modalIniciarSesion">Iniciar Sesión</a>                            
                        </p>
                    </div>
                </div>
                <!-- Fin de contenedor de la derecha - Page Header -->
            </div>
            <br>
            <!-- Footer (Nota: Escribir el código que permita que esto quede abajo fijo) -->
            <div class="row">
                <div class="col-md-12">
                    <!-- Footer (Nota: Escribir el código que permita que esto quede abajo fijo) -->
                    <ol class="breadcrumb container-fluid">
                        <em class="text-center">Todos los derechos reservados / <a href="http://getbootstrap.com/">Bootstrap</a> / <a href="http://fortawesome.github.io/Font-Awesome/">Font-Awesome</a> / <a href="http://jquery.com/">JQuery</a></em>
                        <em class="pull-right"><a href="#" data-toggle="modal" data-target="#modalContactenos">Contactar un Administrador</a></em>
                    </ol>

                </div>
            </div>
            <!-- Fin del Footer -->
            <!-- Contenedor principal -->

            <!-- Ventanas Modales -->
            <div class="container">
                <!-- Ventana Modal para Registrárse -->
                <div class="row">
                    <!-- Inicio de Ventana Modal Registro de usuarios -->
                    <div class="modal fade bs-example-modal-lg" id="modalRegistrarse" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                        <!-- La ventana en Sí -->
                        <div class="modal-dialog modal-lg">
                            <!-- Contenedor de la ventana -->
                            <div class="modal-content">
                                <!-- Título de la ventana de registro -->
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h2 class="modal-title text-center text-success">Registrárse en Farmer's Market</h2>
                                </div>
                                <!-- Fin del título de la ventana de registro -->
                                <br>
                                <!-- Contenedor del formulario de registro -->
                                <div class="container-fluid">
                                    <div class="col-md-12">
                                        <form method="POST" action="GestionUsuarios">
                                            <div class="col-md-6">
                                                <div class="form-group has-feedback" id="inpRol">
                                                    <label for="ruRol" class="control-label">Yo soy:</label>
                                                    <select name="ruRol" id="ruRol" class="form-control" tabindex="1" required autofocus onblur="validarSeleccionRol(this)">
                                                        <option value="0">Seleccione un rol</option>
                                                        <option value="1">Cliente</option>
                                                        <option value="2">Productor</option>                                                        
                                                    </select>
                                                </div>

                                                <div class="form-group has-feedback" id="inpDocumento">
                                                    <label class="control-label" for="ruDocumento">N° de Documento:</label>
                                                    <input type="text" class="form-control" tabindex="2" name="ruDocumento"
                                                           id="ruDocumento" value="64569185" maxlength="10" required onblur="validarUsuarioYaRegistrado(this);
                                                                   validarDocumento(this)">
                                                    <i id="iconFeedbackDocumento"></i>
                                                </div>                           

                                                <div class="form-group has-feedback" id="inpNombres">
                                                    <label class="control-label" for="ruNombres">Nombres:</label>
                                                    <input type="text" class="form-control" name="ruNombres" maxlength="30" onblur="validarNombres(this);"
                                                           id="ruNombres" tabindex="3" value="Alyson" required>
                                                    <i id="iconFeedbackNombres"></i>
                                                </div>

                                                <div class="form-group has-feedback" id="inpApellidos">
                                                    <label class="control-label" for="ruApellidos">Apellidos:</label>
                                                    <input type="text" class="form-control" name="ruApellidos" maxlength="30"
                                                           id="ruApellidos" tabindex="4" value="Romero Oviedo" onblur="validarApellidos(this)" required>
                                                    <i id="iconFeedbackApellidos"></i>
                                                </div>

                                                <div class="form-group has-feedback" id="inpCorreo">
                                                    <label class="control-label" for="ruCorreo">Correo:</label>
                                                    <input type="text" class="form-control" name="ruCorreo" tabindex="5" onblur="validarCorreo(this);
                                                            validaCorreoYaRegistrado(this)"
                                                           id="ruCorreo" value="alyssa-luna@hotmail.com" required>
                                                    <i id="iconFeedbackCorreo"></i>
                                                </div>

                                                <div class="form-group has-feedback" id="inpCorreoRepetido">
                                                    <label class="control-label" for="ruCorreo2">Repetir Correo:</label>
                                                    <input type="text" class="form-control" name="ruCorreo2" tabindex="6" onblur="validarRepetirCorreo(this)"
                                                           id="ruCorreo2" required>
                                                    <i id="iconFeedbackCorreo2"></i>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group has-feedback" id="inpDireccion">
                                                    <label class="control-label" for="ruDireccion">Dirección:</label>
                                                    <input type="text" class="form-control" name="ruDireccion" 
                                                           id="ruDireccion" tabindex="7" value="Carrera 19 Bis 8 - 19" onblur="validarDireccion(this)" required>
                                                    <i id="iconFeedbackDireccion"></i>
                                                </div>

                                                <div class="form-group has-feedback" id="inpDepartamento">
                                                    <label class="control-label" for="ruDepartamento">Departamento:</label>
                                                    <select name="ruDepartamento" id="ruDepartamento" class="form-control" tabindex="7" onblur="validarDepartamento(this);" onchange="getSubcategorias(this.value);" required>
                                                        <option value="">Seleccione un departamento</option>
                                                        <%
                                                            DepartamentoDao departDao = new DepartamentoDao();
                                                            ArrayList<DepartamentoDto> listDepartamentos;
                                                            listDepartamentos = (ArrayList<DepartamentoDto>) departDao.obtenerDepartamentos();
                                                            for (DepartamentoDto d : listDepartamentos) {
                                                        %>
                                                        <option value="<%= d.getIdDepartamento()%>"><%= d.getNombre() %></option>
                                                        <%
                                                            }
                                                        %>
                                                    </select>
                                                </div>

                                                <div class="form-group has-feedback" id="inpCiudad">
                                                    <label class="control-label" for="ruCiudad">Ciudad:</label>
                                                    <select name="ruCiudad" id="ruCiudad" class="form-control" tabindex="7" onblur="validarCiudad(this)" required>
                                                        <option value="">Seleccione una ciudad</option>                                                        
                                                    </select>
                                                </div>

                                                <div class="form-group has-feedback" id="inpClave">
                                                    <label class="control-label" for="ruClave">Contraseña:</label>
                                                    <input type="password" class="form-control" value="mark42" name="ruClave" id="ruClave" tabindex="8" required onblur="validarClave(this)">
                                                    <i id="iconFeedbackClave"></i>
                                                </div>

                                                <div class="form-group has-feedback" id="inpCaptcha">
                                                    <label class="control-label" for="answer"><img src="ocaptcha"/></label>
                                                    <input type="text" name="answer" id="answer" class="form-control" 
                                                           placeholder="Ingrese los caracteres de la figura" tabindex="9" required onblur="validarCaptcha(this)">                                                    
                                                </div>

                                                <div class="checkbox has-feedback">
                                                    <label class="control-label">
                                                        <input required type="checkbox" tabindex="10"> Acepto <a href="#" data-toggle="modal" data-target="#modalTerminos">Terminos y Condiciones</a>
                                                    </label>
                                                </div>

                                                <input type="submit" id="botonRegistro" name="botonRegistro" class="btn btn-success" value="Registrarme">
                                            </div>
                                        </form>  
                                    </div>
                                    <!-- -->
                                </div>
                                <!-- Contenedor del formulario de registro -->
                            </div>
                            <!-- Fin del contenedor de la ventana -->
                        </div>
                        <!-- Fin de la ventana en Sí -->
                    </div>
                    <!-- Fin de Ventana Modal Larga -->
                </div>
                <!-- Fin de ventana Modal para Registrárse -->

                <!-- Ventana modal para Iniciar Sesión -->
                <div class="row">
                    <div class="modal fade bs-example-modal-sm" id="modalIniciarSesion" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                                <!-- Título de la ventana de registro -->
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h2 class="modal-title text-center text-success">Iniciar Sesión</h2>
                                </div>
                                <!-- Fin del título de la ventana de registro -->
                                <br>
                                <div class="container-fluid">
                                    <form method="POST" action="ControladorOfertas">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label" for="isDocumento">N° Documento</label>
                                                <input type="text" class="form-control" id="isDocumento" 
                                                       name="isDocumento" maxlength="10" placeholder="Ingrese su documento">
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label" for="isClave">Contraseña</label>
                                                <input type="password" class="form-control" id="isClave" name="isClave" placeholder="Ingrese su contraseña">
                                                <br>
                                                <em><a href="#" data-toggle="modal" data-target="#modalRecuperarClave">¿Olvido su contraseña?</a></em>
                                            </div>
                                            <center>
                                                <input type="submit" name="botonIniciar" class="btn btn-success" value="Entrar">
                                            </center>
                                            <br>
                                        </div>                                        
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Ventana modal para Iniciar Sesión -->

                <!-- Ventana modal para Términos y Condiciones -->
                <div class="row">
                    <!-- Modal -->
                    <div class="modal fade" id="modalTerminos" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                                </div>
                                <div class="modal-body">
                                    ...
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Fin de ventana modal para Términos y Condiciones -->

                <!-- Ventana Modal para recuperar Contraseña -->
                <div class="row">
                    <div class="modal fade" id="modalRecuperarClave" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title text-center text-success" id="myModalLabel">Recuperar contraseña</h4>
                                </div>
                                <div class="modal-body">
                                    <form method="POST" action="RecuperarClave" class="form-horizontal">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-4 control-label">Correo Electrónico:</label>
                                            <div class="col-sm-8">
                                                <input type="email" class="form-control" id="inputEmail3" placeholder="Ingrese su correo electrónico">
                                            </div>
                                        </div>
                                        <input type="hidden" class="form-control" name="btnRecuperar" value="Recuperar">
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">Recuperar Contraseña</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Fin de ventana Modal para recuperar Contraseña -->

                <!-- Formulario de Contáctenos -->
                <div>
                    <div class="modal fade" id="modalContactenos" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title text-center" id="myModalLabel">Contáctenos | Farmer's Market</h4>
                                </div>
                                <div class="modal-body">
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <label for="mcNombre" class="col-sm-2 control-label">Nombre</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="mcNombre"
                                                       id="mcNombre" placeholder="Ingrese su nombre">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="mcCorreo" class="col-sm-2 control-label">Correo</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="mcCorreo"
                                                       id="mcCorreo" placeholder="Ingrese su correo electrónico">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">Mensaje</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" rows="4" placeholder="Ingrese su mensaje para la compañía Farmer's Market"></textarea>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                    <button type="button" class="btn btn-success">Enviar Mensaje</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Fin de formulario de Contáctenos -->
            </div>
        </div>
    </body>
</html>
