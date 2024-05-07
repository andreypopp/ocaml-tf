(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type master_user_secret = {
  kms_key_id : string prop;
  secret_arn : string prop;
  secret_status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : master_user_secret) -> ()

let yojson_of_master_user_secret =
  (function
   | {
       kms_key_id = v_kms_key_id;
       secret_arn = v_secret_arn;
       secret_status = v_secret_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_status in
         ("secret_status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_arn in
         ("secret_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       `Assoc bnds
    : master_user_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_master_user_secret

[@@@deriving.end]

type aws_db_instance = {
  db_instance_identifier : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_instance) -> ()

let yojson_of_aws_db_instance =
  (function
   | {
       db_instance_identifier = v_db_instance_identifier;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_instance_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_instance_identifier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_db_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_instance

[@@@deriving.end]

let aws_db_instance ?db_instance_identifier ?id ?tags () :
    aws_db_instance =
  { db_instance_identifier; id; tags }

type t = {
  tf_name : string;
  address : string prop;
  allocated_storage : float prop;
  auto_minor_version_upgrade : bool prop;
  availability_zone : string prop;
  backup_retention_period : float prop;
  ca_cert_identifier : string prop;
  db_cluster_identifier : string prop;
  db_instance_arn : string prop;
  db_instance_class : string prop;
  db_instance_identifier : string prop;
  db_instance_port : float prop;
  db_name : string prop;
  db_parameter_groups : string list prop;
  db_subnet_group : string prop;
  enabled_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_version : string prop;
  hosted_zone_id : string prop;
  id : string prop;
  iops : float prop;
  kms_key_id : string prop;
  license_model : string prop;
  master_user_secret : master_user_secret list prop;
  master_username : string prop;
  max_allocated_storage : float prop;
  monitoring_interval : float prop;
  monitoring_role_arn : string prop;
  multi_az : bool prop;
  network_type : string prop;
  option_group_memberships : string list prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  replicate_source_db : string prop;
  resource_id : string prop;
  storage_encrypted : bool prop;
  storage_throughput : float prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  timezone : string prop;
  vpc_security_groups : string list prop;
}

let make ?db_instance_identifier ?id ?tags __id =
  let __type = "aws_db_instance" in
  let __attrs =
    ({
       tf_name = __id;
       address = Prop.computed __type __id "address";
       allocated_storage =
         Prop.computed __type __id "allocated_storage";
       auto_minor_version_upgrade =
         Prop.computed __type __id "auto_minor_version_upgrade";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       backup_retention_period =
         Prop.computed __type __id "backup_retention_period";
       ca_cert_identifier =
         Prop.computed __type __id "ca_cert_identifier";
       db_cluster_identifier =
         Prop.computed __type __id "db_cluster_identifier";
       db_instance_arn = Prop.computed __type __id "db_instance_arn";
       db_instance_class =
         Prop.computed __type __id "db_instance_class";
       db_instance_identifier =
         Prop.computed __type __id "db_instance_identifier";
       db_instance_port =
         Prop.computed __type __id "db_instance_port";
       db_name = Prop.computed __type __id "db_name";
       db_parameter_groups =
         Prop.computed __type __id "db_parameter_groups";
       db_subnet_group = Prop.computed __type __id "db_subnet_group";
       enabled_cloudwatch_logs_exports =
         Prop.computed __type __id "enabled_cloudwatch_logs_exports";
       endpoint = Prop.computed __type __id "endpoint";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       iops = Prop.computed __type __id "iops";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       license_model = Prop.computed __type __id "license_model";
       master_user_secret =
         Prop.computed __type __id "master_user_secret";
       master_username = Prop.computed __type __id "master_username";
       max_allocated_storage =
         Prop.computed __type __id "max_allocated_storage";
       monitoring_interval =
         Prop.computed __type __id "monitoring_interval";
       monitoring_role_arn =
         Prop.computed __type __id "monitoring_role_arn";
       multi_az = Prop.computed __type __id "multi_az";
       network_type = Prop.computed __type __id "network_type";
       option_group_memberships =
         Prop.computed __type __id "option_group_memberships";
       port = Prop.computed __type __id "port";
       preferred_backup_window =
         Prop.computed __type __id "preferred_backup_window";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       replicate_source_db =
         Prop.computed __type __id "replicate_source_db";
       resource_id = Prop.computed __type __id "resource_id";
       storage_encrypted =
         Prop.computed __type __id "storage_encrypted";
       storage_throughput =
         Prop.computed __type __id "storage_throughput";
       storage_type = Prop.computed __type __id "storage_type";
       tags = Prop.computed __type __id "tags";
       timezone = Prop.computed __type __id "timezone";
       vpc_security_groups =
         Prop.computed __type __id "vpc_security_groups";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_instance
        (aws_db_instance ?db_instance_identifier ?id ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?db_instance_identifier ?id ?tags __id =
  let (r : _ Tf_core.resource) =
    make ?db_instance_identifier ?id ?tags __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
