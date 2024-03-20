(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dms_replication_instance = {
  id : string prop option; [@option]
  replication_instance_id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dms_replication_instance) -> ()

let yojson_of_aws_dms_replication_instance =
  (function
   | {
       id = v_id;
       replication_instance_id = v_replication_instance_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_replication_instance_id
         in
         ("replication_instance_id", arg) :: bnds
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
    : aws_dms_replication_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dms_replication_instance

[@@@deriving.end]

let aws_dms_replication_instance ?id ?tags ~replication_instance_id
    () : aws_dms_replication_instance =
  { id; replication_instance_id; tags }

type t = {
  allocated_storage : float prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  engine_version : string prop;
  id : string prop;
  kms_key_arn : string prop;
  multi_az : bool prop;
  network_type : string prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  replication_instance_arn : string prop;
  replication_instance_class : string prop;
  replication_instance_id : string prop;
  replication_instance_private_ips : string list prop;
  replication_instance_public_ips : string list prop;
  replication_subnet_group_id : string prop;
  tags : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

let make ?id ?tags ~replication_instance_id __id =
  let __type = "aws_dms_replication_instance" in
  let __attrs =
    ({
       allocated_storage =
         Prop.computed __type __id "allocated_storage";
       auto_minor_version_upgrade =
         Prop.computed __type __id "auto_minor_version_upgrade";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       engine_version = Prop.computed __type __id "engine_version";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       multi_az = Prop.computed __type __id "multi_az";
       network_type = Prop.computed __type __id "network_type";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       replication_instance_arn =
         Prop.computed __type __id "replication_instance_arn";
       replication_instance_class =
         Prop.computed __type __id "replication_instance_class";
       replication_instance_id =
         Prop.computed __type __id "replication_instance_id";
       replication_instance_private_ips =
         Prop.computed __type __id "replication_instance_private_ips";
       replication_instance_public_ips =
         Prop.computed __type __id "replication_instance_public_ips";
       replication_subnet_group_id =
         Prop.computed __type __id "replication_subnet_group_id";
       tags = Prop.computed __type __id "tags";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_replication_instance
        (aws_dms_replication_instance ?id ?tags
           ~replication_instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~replication_instance_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~replication_instance_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
