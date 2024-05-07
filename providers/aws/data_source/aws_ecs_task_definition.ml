(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecs_task_definition = {
  id : string prop option; [@option]
  task_definition : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecs_task_definition) -> ()

let yojson_of_aws_ecs_task_definition =
  (function
   | { id = v_id; task_definition = v_task_definition } ->
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
       `Assoc bnds
    : aws_ecs_task_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecs_task_definition

[@@@deriving.end]

let aws_ecs_task_definition ?id ~task_definition () :
    aws_ecs_task_definition =
  { id; task_definition }

type t = {
  tf_name : string;
  arn : string prop;
  arn_without_revision : string prop;
  execution_role_arn : string prop;
  family : string prop;
  id : string prop;
  network_mode : string prop;
  revision : float prop;
  status : string prop;
  task_definition : string prop;
  task_role_arn : string prop;
}

let make ?id ~task_definition __id =
  let __type = "aws_ecs_task_definition" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       arn_without_revision =
         Prop.computed __type __id "arn_without_revision";
       execution_role_arn =
         Prop.computed __type __id "execution_role_arn";
       family = Prop.computed __type __id "family";
       id = Prop.computed __type __id "id";
       network_mode = Prop.computed __type __id "network_mode";
       revision = Prop.computed __type __id "revision";
       status = Prop.computed __type __id "status";
       task_definition = Prop.computed __type __id "task_definition";
       task_role_arn = Prop.computed __type __id "task_role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_task_definition
        (aws_ecs_task_definition ?id ~task_definition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~task_definition __id =
  let (r : _ Tf_core.resource) = make ?id ~task_definition __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
