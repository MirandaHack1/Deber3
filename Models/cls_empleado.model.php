<?php
require_once('cls_conexion.model.php');
class Clase_Empleado
{
    public function todos()
    {
        try {
            $con = new Clase_Conectar_Base_Datos();
            $con = $con->ProcedimientoConectar();
            $cadena = "SELECT * FROM `empleado`";
            $result = mysqli_query($con, $cadena);
            return $result;
        } catch (Throwable $th) {
            return $th->getMessage();
        } finally {
            $con->close();
        }
    }
    public function uno($frm_id)
    {
        try {
            $con = new Clase_Conectar_Base_Datos();
            $con = $con->ProcedimientoConectar();
            $cadena = "SELECT * FROM `empleado` WHERE frm_id=$frm_id";
            $result = mysqli_query($con, $cadena);
            return $result;
        } catch (Throwable $th) {
            return $th->getMessage();
        } finally {
            $con->close();
        }
    }
    public function insertar($frm_identificacion, $frm_empleado, $frm_fecha_nacimiento, $frm_celular, $frm_estado)
    {
        try {
            $con = new Clase_Conectar_Base_Datos();
            $con = $con->ProcedimientoConectar();
            $cadena = "INSERT INTO `empleado`(`frm_identificacion`, `frm_empleado`, `frm_fecha_nacimiento`, `frm_celular`, `frm_estado`) VALUES ('$frm_identificacion','$frm_empleado','$frm_fecha_nacimiento','$frm_celular','$frm_estado')";
            $result = mysqli_query($con, $cadena);
            return 'ok';
        } catch (Throwable $th) {
            return $th->getMessage();
        } finally {
            $con->close();
        }
    }
    public function actualizar($frm_id, $frm_identificacion, $frm_empleado, $frm_fecha_nacimiento, $frm_celular, $frm_estado)
    {
        try {
            $con = new Clase_Conectar_Base_Datos();
            $con = $con->ProcedimientoConectar();
            $cadena = "UPDATE `empleado` SET `frm_identificacion`='$frm_identificacion',`frm_empleado`='$frm_empleado',`frm_fecha_nacimiento`='$frm_fecha_nacimiento',`frm_celular`='$frm_celular',`frm_estado`='$frm_estado' WHERE frm_id=$frm_id";
            $result = mysqli_query($con, $cadena);
            return 'ok';
        } catch (Throwable $th) {
            return $th->getMessage();
        } finally {
            $con->close();
        }
    }
    public function eliminar($frm_id)
    {
        try {
            $con = new Clase_Conectar_Base_Datos();
            $con = $con->ProcedimientoConectar();
            $cadena = "DELETE FROM `empleado` WHERE frm_id=$frm_id";
            $result = mysqli_query($con, $cadena);
            return 'ok';
        } catch (Throwable $th) {
            return $th->getMessage();
        } finally {
            $con->close();
        }
    }
}
