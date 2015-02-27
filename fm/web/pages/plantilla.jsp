<%-- 
    Document   : plantilla
    Created on : 27/02/2015, 12:22:03 PM
    Author     : kennross
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="../img/favicon.ico">
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../css/font-awesome.css">
        <script type="text/javascript" src="../js/jquery-1.11.2.js"></script>
        <script type="text/javascript" src="../js/bootstrap.js"></script>
        <title>Farmer's Market</title>
    </head>
    <body>
        <div class="container">
            <!-- Banner Farmer's Market -->
            <div class="row">
                <div class="col-md-12">
                    <img src="../img/banner.jpg" alt="Banner de Farmer's Market" width="1000px">
                </div>
            </div>
            <!-- Fin del Banner  -->

            <!-- Contenedor Principal de la Página -->
            <div class="row">
                <!-- Dashboard -->
                <div class="col-md-2" style="background: #FAFAFA; border-radius: 3px">
                    <!-- Información del Rol iniciado -->
                    <div class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object img-circle" width="50" src="../img/avatars/avatar.png" alt="Mi foto de perfil">
                            </a>
                        </div>
                        <div class="media-body">
                            <p></p>
                            <h4 class="media-heading">Productor</h4>
                            Kennit Romero
                        </div>
                    </div>
                    <!-- Fin del rol iniciado -->
                    <hr>

                    <!-- Menú de navegación -->
                    <ul class="nav nav-pills nav-stacked">
                        <li role="presentation" class="active text-center"><a href="#">Inicio <i class="fa fa-shopping-cart "></i></a></li>
                        <li role="presentation" class="text-center"><a href="#">Mis pedidos <i class="fa fa-shopping-cart "></i></a></li>
                        <li role="presentation" class="text-center"><a href="#">Productos <i class="fa fa-shopping-cart "></i></a></li>                        
                        <li role="presentation" class="text-center"><a href="#">Mis Productos <i class="fa fa-shopping-cart "></i></a></li>
                        <li role="presentation" class="text-center"><a href="#">Catalogo <i class="fa fa-list-alt "></i></a></li>
                    </ul>
                    <!-- Fin del menú de navegación -->

                </div>
                <!-- Fin de la Dashboard -->


                <!-- Contenedor de Segundo-->
                <div class="col-md-10">
                    <!-- Menú de Sesion, buscar, idiomas y info -->
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <a href="#" class="navbar-brand text-success">
                                    Pedidos <span class="badge info">4</span> 
                                </a>
                                <a href="#" class="navbar-brand text-success">
                                    Ofertas <span class="badge">18</span>
                                </a>
                            </div>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-right">                                    
                                    <li><a href="#"><img src="../img/flag/ing/flag-ingles-16.png" alt="Cambiar idioma a Inglés" title="Cambiar idioma a Inglés"></a></li>
                                    <li><a href="#"><img src="../img/flag/spa/flag-spanis16.png" alt="Cambiar idioma a Español" title="Cambiar idioma a Español"></a></li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> Kennit Romero <span class="fa fa-chevron-down"></span></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li class="text-center"><a href="#">Cerrar Sesión</a></li>
                                            <li class="divider"></li>
                                            <li class="text-center"><a href="#">Mi Perfil</a></li>
                                            <li class="divider"></li>
                                            <li class="text-center"><a href="#" data-toggle="modal" data-target="#modalCambiarClave">Cambiar Contraseña</a></li>
                                            <li class="divider"></li>
                                            <li class="text-center"><a href="#">Ayuda <i class="fa fa-exclamation-circle"></i></a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <form class="navbar-form navbar-right" role="search">
                                    <div class="form-group">
                                        <div class="input-group">                                            
                                            <input type="text" class="form-control" placeholder="¿Qué está buscando?...">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="submit">Buscar!</button>
                                            </span>
                                        </div>
                                    </div>
                                </form>

                                <ul class="navbar-form navbar-toggle">                                                                                
                                    <button class="btn btn-success navbar-brand" type="button">
                                        Pedidos <span class="badge">4</span>
                                    </button>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <!-- Fin de menú de sesión, buscar, idiomas y info -->

                    <!-- Miga de pan -->
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Library</a></li>
                        <li class="active">Data</li>
                    </ol>
                    <!-- Fin de miga de pan -->

                    <!-- Contenedor de contenido especifico -->
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-8" style="background: green;">
                                <br><br><br><br><br><br><br>
                            </div>
                            <div class="col-md-4" style="background: greenyellow;">
                                <br><br><br><br><br><br><br>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8" style="background: green;">
                                <br><br><br><br><br><br><br>
                            </div>
                            <div class="col-md-4" style="background: greenyellow;">
                                <br><br><br><br><br><br><br>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3" style="background: gray;">
                                <br><br><br><br><br><br><br>
                            </div>
                            <div class="col-md-3" style="background: #286090;">
                                <br><br><br><br><br><br><br>
                            </div>
                            <div class="col-md-3" style="background: yellow;">
                                <br><br><br><br><br><br><br>
                            </div>
                            <div class="col-md-3" style="background: blue;">
                                <br><br><br><br><br><br><br>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-1" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-1" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-1" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-1" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-1" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-1" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-1" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-1" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-1" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-1" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-1" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-1" style="border: black 1px solid"><br><br><br></div>
                        </div>
                        <div class="row">
                            <div class="col-md-8" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-4" style="border: black 1px solid"><br><br><br></div>
                        </div>
                        <div class="row">
                            <div class="col-md-4" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-4" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-4" style="border: black 1px solid"><br><br><br></div>
                        </div>
                        <div class="row">
                            <div class="col-md-6" style="border: black 1px solid"><br><br><br></div>
                            <div class="col-md-6" style="border: black 1px solid"><br><br><br></div>
                        </div>

                        <div class="row">
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                Launch demo modal
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Fin de contenedor de contenido especifico -->


                    <!-- Ventanas Modales -->
                    <div class="container-fluid">
                        <!-- Cambiar Contraseña -->
                        <div>
                            <div class="modal fade" id="modalCambiarClave" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title text-center" id="myModalLabel">Cambiar Contraseña</h4>
                                        </div>
                                        <div class="modal-body">

                                            <form class="form-horizontal">
                                                <div class="form-group has-error has-feedback">
                                                    <label for="ccClaveAntigua" class="col-sm-4 control-label">Contraseña Antigua</label>
                                                    <div class="col-sm-7">
                                                        <input type="password" class="form-control" 
                                                               id="ccClaveAntigua" placeholder="Ingrese la contraseña antigua"
                                                               name="ccClaveAntigua">
                                                        <!-- Al momento de validar, se le manda la class a la i para agregar icon-->
                                                        <i class="glyphicon glyphicon-remove form-control-feedback"></i>
                                                    </div>
                                                </div>

                                                <div class="form-group has-warning has-feedback">
                                                    <label for="ccClaveNueva" class="col-sm-4 control-label">Nueva Contraseña</label>
                                                    <div class="col-sm-7">                                                        
                                                        <input type="password" class="form-control" 
                                                               id="ccClaveNueva" placeholder="Ingrese una nueva contraseña"
                                                               name="ccClaveNueva">
                                                        <!-- Al momento de validar, se le manda la class a la i para agregar icon-->
                                                        <i class="glyphicon glyphicon-exclamation-sign form-control-feedback"></i>
                                                    </div>
                                                </div>

                                                <div class="form-group has-success has-feedback">
                                                    <label for="ccClaveRepetida" class="col-sm-4 control-label">Repetir Contraseña</label>
                                                    <div class="col-sm-7">
                                                        <input type="password" class="form-control" 
                                                               id="ccClaveRepetida" placeholder="Repita la contraseña"
                                                               name="ccClaveRepetida">
                                                        <!-- Al momento de validar, se le manda la class a la i para agregar icon-->
                                                        <i class="glyphicon glyphicon-ok form-control-feedback"></i>
                                                    </div>
                                                </div>
                                            </form>                                                                                        
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                                            <button type="button" class="btn btn-success">Cambiar Contraseña</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <!-- Contenedor de Segundo-->
            </div>
            <!-- Fin de contenedor Principal de la Página -->
            <p></p>
            <!-- Footer (Nota: Escribir el código que permita que esto quede abajo fijo) -->
            <div class="row">
                <div class="col-md-13">
                    <!-- Footer (Nota: Escribir el código que permita que esto quede abajo fijo) -->
                    <ol class="breadcrumb container-fluid">
                        <em class="text-center">Todos los derechos reservados / Bootstrap / Font-Awesome</em>
                        <em class="pull-right"><a href="#">Contactar un Administrador</a></em>
                    </ol>

                </div>
            </div>
            <!-- Fin del Footer -->
        </div>
    </body>
</html>
