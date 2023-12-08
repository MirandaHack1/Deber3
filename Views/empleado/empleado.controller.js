function init() {
  $("#form_empleado").on("submit", function (e) {
    guardaryeditar(e);
  });
}

$().ready(() => {
    //detecta carga de la pagina
    todos_controlador();
  });

var todos_controlador = () => {
var todos = new Empleado_model("","", "", "", "", "","todos");
todos.todos();
}


var guardaryeditar = (e) => {
  e.preventDefault();
  var formData = new FormData($("#form_empleado")[0]);
 
  var frm_id = document.getElementById("frm_id").value
 
  if(frm_id > 0){
    var empleado = new Empleado_model('','','','','',formData,'editar');
    empleado.editar();
  }else{
    var empleado = new Empleado_model('','','','','',formData,'insertar');
  empleado.insertar();
  }
};
var editar = (frm_id) => {
  var uno = new Empleado_model(frm_id, "", "", "", "", "", "uno");
  uno.uno();
};

var eliminar=(frm_id)=>{
  var eliminar = new Empleado_model(frm_id, "", "", "", "", "", "eliminar");
  eliminar.eliminar();
}

;init();
