(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type service_connect_defaults = { namespace : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : service_connect_defaults) -> ()

let yojson_of_service_connect_defaults =
  (function
   | { namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       `Assoc bnds
    : service_connect_defaults -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_connect_defaults

[@@@deriving.end]

type setting = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : setting) -> ()

let yojson_of_setting =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_setting

[@@@deriving.end]

type aws_ecs_cluster = {
  cluster_name : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecs_cluster) -> ()

let yojson_of_aws_ecs_cluster =
  (function
   | { cluster_name = v_cluster_name; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_ecs_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecs_cluster

[@@@deriving.end]

let aws_ecs_cluster ?id ?tags ~cluster_name () : aws_ecs_cluster =
  { cluster_name; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  cluster_name : string prop;
  id : string prop;
  pending_tasks_count : float prop;
  registered_container_instances_count : float prop;
  running_tasks_count : float prop;
  service_connect_defaults : service_connect_defaults list prop;
  setting : setting list prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?tags ~cluster_name __id =
  let __type = "aws_ecs_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       cluster_name = Prop.computed __type __id "cluster_name";
       id = Prop.computed __type __id "id";
       pending_tasks_count =
         Prop.computed __type __id "pending_tasks_count";
       registered_container_instances_count =
         Prop.computed __type __id
           "registered_container_instances_count";
       running_tasks_count =
         Prop.computed __type __id "running_tasks_count";
       service_connect_defaults =
         Prop.computed __type __id "service_connect_defaults";
       setting = Prop.computed __type __id "setting";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_cluster
        (aws_ecs_cluster ?id ?tags ~cluster_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~cluster_name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~cluster_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
