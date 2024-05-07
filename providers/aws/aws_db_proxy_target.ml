(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_db_proxy_target = {
  db_cluster_identifier : string prop option; [@option]
  db_instance_identifier : string prop option; [@option]
  db_proxy_name : string prop;
  id : string prop option; [@option]
  target_group_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_proxy_target) -> ()

let yojson_of_aws_db_proxy_target =
  (function
   | {
       db_cluster_identifier = v_db_cluster_identifier;
       db_instance_identifier = v_db_instance_identifier;
       db_proxy_name = v_db_proxy_name;
       id = v_id;
       target_group_name = v_target_group_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_group_name
         in
         ("target_group_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_db_proxy_name in
         ("db_proxy_name", arg) :: bnds
       in
       let bnds =
         match v_db_instance_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_instance_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_cluster_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_cluster_identifier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_db_proxy_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_proxy_target

[@@@deriving.end]

let aws_db_proxy_target ?db_cluster_identifier
    ?db_instance_identifier ?id ~db_proxy_name ~target_group_name ()
    : aws_db_proxy_target =
  {
    db_cluster_identifier;
    db_instance_identifier;
    db_proxy_name;
    id;
    target_group_name;
  }

type t = {
  tf_name : string;
  db_cluster_identifier : string prop;
  db_instance_identifier : string prop;
  db_proxy_name : string prop;
  endpoint : string prop;
  id : string prop;
  port : float prop;
  rds_resource_id : string prop;
  target_arn : string prop;
  target_group_name : string prop;
  tracked_cluster_id : string prop;
  type_ : string prop;
}

let make ?db_cluster_identifier ?db_instance_identifier ?id
    ~db_proxy_name ~target_group_name __id =
  let __type = "aws_db_proxy_target" in
  let __attrs =
    ({
       tf_name = __id;
       db_cluster_identifier =
         Prop.computed __type __id "db_cluster_identifier";
       db_instance_identifier =
         Prop.computed __type __id "db_instance_identifier";
       db_proxy_name = Prop.computed __type __id "db_proxy_name";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       port = Prop.computed __type __id "port";
       rds_resource_id = Prop.computed __type __id "rds_resource_id";
       target_arn = Prop.computed __type __id "target_arn";
       target_group_name =
         Prop.computed __type __id "target_group_name";
       tracked_cluster_id =
         Prop.computed __type __id "tracked_cluster_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_proxy_target
        (aws_db_proxy_target ?db_cluster_identifier
           ?db_instance_identifier ?id ~db_proxy_name
           ~target_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?db_cluster_identifier
    ?db_instance_identifier ?id ~db_proxy_name ~target_group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?db_cluster_identifier ?db_instance_identifier ?id
      ~db_proxy_name ~target_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
