(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecs_container_definition = {
  container_name : string prop;
  id : string prop option; [@option]
  task_definition : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecs_container_definition) -> ()

let yojson_of_aws_ecs_container_definition =
  (function
   | {
       container_name = v_container_name;
       id = v_id;
       task_definition = v_task_definition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_task_definition
         in
         ("task_definition", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_ecs_container_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecs_container_definition

[@@@deriving.end]

let aws_ecs_container_definition ?id ~container_name ~task_definition
    () : aws_ecs_container_definition =
  { container_name; id; task_definition }

type t = {
  tf_name : string;
  container_name : string prop;
  cpu : float prop;
  disable_networking : bool prop;
  docker_labels : string Tf_core.assoc prop;
  environment : string Tf_core.assoc prop;
  id : string prop;
  image : string prop;
  image_digest : string prop;
  memory : float prop;
  memory_reservation : float prop;
  task_definition : string prop;
}

let make ?id ~container_name ~task_definition __id =
  let __type = "aws_ecs_container_definition" in
  let __attrs =
    ({
       tf_name = __id;
       container_name = Prop.computed __type __id "container_name";
       cpu = Prop.computed __type __id "cpu";
       disable_networking =
         Prop.computed __type __id "disable_networking";
       docker_labels = Prop.computed __type __id "docker_labels";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       image = Prop.computed __type __id "image";
       image_digest = Prop.computed __type __id "image_digest";
       memory = Prop.computed __type __id "memory";
       memory_reservation =
         Prop.computed __type __id "memory_reservation";
       task_definition = Prop.computed __type __id "task_definition";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_container_definition
        (aws_ecs_container_definition ?id ~container_name
           ~task_definition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~container_name ~task_definition __id =
  let (r : _ Tf_core.resource) =
    make ?id ~container_name ~task_definition __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
