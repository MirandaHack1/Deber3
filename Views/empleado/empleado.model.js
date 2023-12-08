class Empleado_model {
  constructor(
    frm_id,
    frm_identificacion,
    frm_empleado,
    frm_fecha_nacimiento,
    frm_celular,
    frm_estado,
    Ruta
  ) {
    this.frm_id = frm_id;
    this.frm_identificacion = frm_identificacion;
    this.frm_empleado = frm_empleado;
    this.frm_fecha_nacimiento = frm_fecha_nacimiento;
    this.frm_celular = frm_celular;
    this.frm_estado = frm_estado;
    this.Ruta = Ruta;

  }
  todos() {
    var html = "";
    $.get("../../Controllers/empleado.controller.php?op=" + this.Ruta, (res) => {
      res = JSON.parse(res);
      $.each(res, (index, valor) => {


        html += `<tr>
                            <td>${index + 1}</td>
                            <td>${valor.frm_identificacion}</td>
                            <td>${valor.frm_empleado}</td>
                            <td>${valor.frm_fecha_nacimiento}</td>
                            <td>${valor.frm_celular}</td>
                            <td>${valor.frm_estado}</td>
                            </span>
            </div></td>
            <td>
            <button class='btn btn-success' onclick='editar(${valor.frm_id
          })'>Editar</button>
            <button class='btn btn-danger' onclick='eliminar(${valor.frm_id
          })'>Eliminar</button>
            <button class='btn btn-info' onclick='ver(${valor.frm_id
          })'>Ver</button>
            </td></tr>
                `;
      });
      $("#tabla_empleado").html(html);
    });
    return html;

  }
  insertar() {
    var dato = new FormData();
    dato = this.frm_estado;
    $.ajax({
      url: "../../Controllers/empleado.controller.php?op=insertar",
      type: "POST",
      data: dato,
      contentType: false,
      processData: false,
      success: function (res) {
        res = JSON.parse(res);
        if (res === "ok") {
          Swal.fire("Empleado", "Empleado Registrado", "success");
          todos_controlador();
        } else {
          Swal.fire("Error", res, "error");
        }
      },
    });
    this.limpia_Cajas();
  }


  uno() {
    var frm_id = this.frm_id;
    $.post(
      "../../Controllers/empleado.controller.php?op=uno",
      { frm_id: frm_id },
      (res) => {
        console.log(res);
        res = JSON.parse(res);
        $("#frm_id").val(res.frm_id);
        $("#frm_identificacion").val(res.frm_identificacion);
        $("#frm_empleado").val(res.frm_empleado);
        $("#frm_fecha_nacimiento").val(res.frm_fecha_nacimiento);
        $("#frm_celular").val(res.frm_celular);

        document.getElementById("frm_estado").value = res.frm_estado; //asiganr al select el valor

      }
    );
    $("#Modal_empleado").modal("show");
  }

  editar() {
    var dato = new FormData();
    dato = this.frm_estado;
    $.ajax({
      url: "../../Controllers/empleado.controller.php?op=actualizar",
      type: "POST",
      data: dato,
      contentType: false,
      processData: false,
      success: function (res) {
        res = JSON.parse(res);
        if (res === "ok") {
          Swal.fire("empleado", "empleado Registrado", "success");
          todos_controlador();
        } else {
          Swal.fire("Error", res, "error");
        }
      },
    });
    this.limpia_Cajas();
  }

  eliminar() {
    var frm_id = this.frm_id;

    Swal.fire({
      title: "empleado",
      text: "Esta seguro de eliminar el empleado",
      icon: "warning",
      showCancelButton: true,
      confirmButtonColor: "#d33",
      cancelButtonColor: "#3085d6",
      confirmButtonText: "Eliminar",
    }).then((result) => {
      if (result.isConfirmed) {
        $.post(
          "../../Controllers/empleado.controller.php?op=eliminar",
          { frm_id: frm_id },
          (res) => {
            console.log(res);

            res = JSON.parse(res);
            if (res === "ok") {
              Swal.fire("empleados", "empleado Eliminado", "success");
              todos_controlador();
            } else {
              Swal.fire("Error", res, "error");
            }
          }
        );
      }
    });

    this.limpia_Cajas();
  }

  limpia_Cajas() {
    document.getElementById("frm_identificacion").value = "";
    document.getElementById("frm_empleado").value = "";
    document.getElementById("frm_fecha_nacimiento").value = "";
    document.getElementById("frm_celular").value = "";
    document.getElementById("frm_estado").value = "";
    $("#frm_id").val("");

    $("#Modal_empleado").modal("hide");
  }
}