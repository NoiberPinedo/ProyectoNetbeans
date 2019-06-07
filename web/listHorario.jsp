<%-- 
    Document   : insert
    Created on : 22/04/2019, 09:57:11 AM
    Author     : LEO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="description" content="bootstrap default admin template">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>General Elements | Prince Admin Template</title>
        <link rel="stylesheet" href="assets/global/plugins/Waves/dist/waves.min.css"/>
        <link rel="stylesheet" href="assets/global/plugins/bootstrap/dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="assets/icons_fonts/font-awesome/css/font-awesome.min.css"/>

        <link href="assets/global/css/components.min.css" type="text/css" rel="stylesheet"/>

        <link rel="stylesheet" href="assets/layouts/layouts_left_menu/left_menu_layout.min.css"/>

        <link rel="stylesheet" href="assets/global/plugins/datatables/media/css/jquery.dataTables.min.css"/>
        <link rel="stylesheet" href="assets/global/plugins/datatables/media/css/dataTables.bootstrap.min.css"/>

        <link href="assets/global/css/components.min.css" type="text/css" rel="stylesheet"/>

        <link rel="icon" href="assets/favicon/prince.ico" type="image/x-icon"/>
        <link rel="icon" type="image/png" sizes="192x192" href="assets/favicon/prince-192x192.png">
        <link rel="apple-touch-icon" sizes="180x180" href="assets/favicon/prince-180x180.png">

    </head>
    <body class="nav-medium">

        <div class="container body">
            <div class="main_container">
                <!-- Start Loader -->
                <div class="page-loader">
                    <div class="preloader loading">
                        <span class="slice"></span>
                        <span class="slice"></span>
                        <span class="slice"></span>
                        <span class="slice"></span>
                        <span class="slice"></span>
                        <span class="slice"></span>
                    </div>
                </div>
                <!-- End Loader -->

                <!-- Start Scroll Top -->
                <a href="javascript:" id="scroll" style="display: none;"><span></span></a>
                <!-- End Scroll Top -->

                <%@include file="izquierda.jsp" %>
                <%@include file="header.jsp" %>

                <div class="clearfix"></div>
                <!-- End top navigation -->
                <!-- Start Contain Section -->
                <div class="container-fluid right_color">
                    <div class="page-main-header">
                        <!-- Page Title -->
                        <h2 class="page-name-title">Horario</h2>
                        <!--  Breadcrumb -->
                        <ol class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li class="text-info">Forms</li>
                            <li class="active">General Elements</li>
                        </ol>
                    </div>

                    <div class="contain-section">
                        <div class="contain-inner-section">

                            <div class="row">

                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="section-header">
                                        <h2>Lista de Horarios</h2>
                                    </div>
                                    <div class="section-body">

                                        <table id="datatable-zero" class="display datatable-default">
                                            <thead>
                                                <tr style="background: red; color: #fff">
                                                    <th>Horas</th>
                                                    <th>Lunes</th>
                                                    <th>Martes</th>
                                                    <th>Miercoles</th>
                                                    <th>Jueves</th>
                                                    <th>Viernes</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td style="background-color: greenyellow">8:00 - 8:50</td>
                                                    <td>Programacion</td>
                                                    <td>Taller BD</td>
                                                    <td>Ingles</td>
                                                    <td>Matematica</td>
                                                    <td>Phyton</td>
                                                </tr>
                                                <tr>
                                                    <td style="background-color: greenyellow">8:50 - 9:40</td>
                                                    <td>Logica de Programacion</td>
                                                    <td>Matematica</td>
                                                    <td>Comunicacion</td>
                                                    <td>Android Studio</td>
                                                    <td>Algoritmo</td>
                                                </tr>
                                                <tr>
                                                    <td style="background-color: greenyellow">9:40 - 10:30</td>
                                                    <td>Logica de Programacion</td>
                                                    <td>Taller de Base de datos</td>
                                                    <td>comunicacion</td>
                                                    <td>Redes</td>
                                                    <td>Seguridad Informatica</td>
                                                </tr>
                                                <tr>
                                                    <td style="background-color: greenyellow">10:30 - 11:20</td>
                                                    <td>Redes</td>
                                                    <td>Seguridad Informatica</td>
                                                    <td>Logica de Programacion</td>
                                                    <td>Java Web</td>
                                                    <td>Desarrollo de Software</td>
                                                </tr>
                                                <tr>
                                                    <td style="background-color: greenyellow">11:20 - 11:50</td>
                                                    <td>Java Script</td>
                                                    <td>Diseño Grafico</td>
                                                    <td>Phyton</td>
                                                    <td>Diseño Web</td>
                                                    <td>Taller de programacion</td>
                                                </tr>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>Horas</th>
                                                    <th>Lunes</th>
                                                    <th>Martes</th>
                                                    <th>Miercoles</th>
                                                    <th>Jueves</th>
                                                    <th>Viernes</th>
                                                </tr>
                                            </tfoot>
                                        </table>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- End Contain Section -->    <!-- Start Footer Section -->    
                <footer class="footer">© 2018 All rights reserved. Template designed by <a class="text-primary" href="javascript:">Prince</a></footer>    <!-- End Footer Section -->
            </div>
        </div>
        <script src="assets/global/plugins/jquery/dist/jquery.min.js"></script>
        <script src="assets/global/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="assets/global/plugins/Waves/dist/waves.min.js"></script>
        <script src="assets/global/plugins/screenfull.js/dist/screenfull.min.js"></script>
        <script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
        <!-- Start core javascript -->

        <!-- Start global js -->
        <script src="assets/global/js/left-menu.min.js"></script>
        <script src="assets/global/js/left-menu.min.js"></script>
        <!-- End global js -->

        <!-- Start page plugin js -->
        <script src="assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
        <script src="assets/global/plugins/datatables/media/js/dataTables.bootstrap.min.js"></script>
        <!-- End page plugin js -->

        <!-- Start page js -->
        <script src="assets/global/js/datatable.min.js"></script>
    </body>
</html>
