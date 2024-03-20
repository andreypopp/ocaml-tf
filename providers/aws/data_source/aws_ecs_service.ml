(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecs_service = {
  cluster_arn : string prop;
  id : string prop option; [@option]
  service_name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecs_service) -> ()

let yojson_of_aws_ecs_service =
  (function
   | {
       cluster_arn = v_cluster_arn;
       id = v_id;
       service_name = v_service_name;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cluster_arn in
         ("cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_ecs_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecs_service

[@@@deriving.end]

let aws_ecs_service ?id ?tags ~cluster_arn ~service_name () :
    aws_ecs_service =
  { cluster_arn; id; service_name; tags }

type t = {
  arn : string prop;
  cluster_arn : string prop;
  desired_count : float prop;
  id : string prop;
  launch_type : string prop;
  scheduling_strategy : string prop;
  service_name : string prop;
  tags : (string * string) list prop;
  task_definition : string prop;
}

let make ?id ?tags ~cluster_arn ~service_name __id =
  let __type = "aws_ecs_service" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cluster_arn = Prop.computed __type __id "cluster_arn";
       desired_count = Prop.computed __type __id "desired_count";
       id = Prop.computed __type __id "id";
       launch_type = Prop.computed __type __id "launch_type";
       scheduling_strategy =
         Prop.computed __type __id "scheduling_strategy";
       service_name = Prop.computed __type __id "service_name";
       tags = Prop.computed __type __id "tags";
       task_definition = Prop.computed __type __id "task_definition";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_service
        (aws_ecs_service ?id ?tags ~cluster_arn ~service_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~cluster_arn ~service_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~cluster_arn ~service_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
