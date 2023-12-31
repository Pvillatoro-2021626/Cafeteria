<%-- 
    Document   : Membresia
    Created on : 7/09/2022, 01:14:49 AM
    Author     : angel
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Poppins:400;800;900" rel="stylesheet">
        <title>Membresia</title>
    </head>
    <body style="background-color: #b3b3b1;">
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form  action="Controlador?menu=Membresia" method="POST">
                        <h1 style="font-family: 'Poppins',sans-serif; align-content: center;">Membresia</h1>
                        <div class="form-group">
                            <label>TIPO MEMBRESIA:</label>
                            <input type="text" name="txtTipoMembresia" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>DESCRIPCION MEMBRESIA</label>
                            <input type="text" name="txtDescripcionMembresia" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="AgregarMembresia" class="btn btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success" >
                    </form>
                </div>
            </div>

            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>CODIGO MEMBRESIA</td>
                            <td>TIPO MEMBRESIA</td>
                            <td>DESCRIPCION MEMBRESIA</td>
                            <td>ACCIONES</td>
                        </tr>
                    </thead>
                    <tbody>

                    <c:forEach var="membresia" items="${membresias}">
                        <tr>
                            <td>${membresia.getCodigoMembresia()}</td>
                            <td>${membresia.getTipoMembresia()}</td>
                            <td>${membresia.getDescripcionMembresia()}</td>
                            <td>
                                <a class="btn btn-warning" href="#">Editar</a>
                                <a class="btn btn-danger" href="#">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
