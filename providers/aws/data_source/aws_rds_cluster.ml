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

type aws_rds_cluster = {
  cluster_identifier : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_cluster) -> ()

let yojson_of_aws_rds_cluster =
  (function
   | {
       cluster_identifier = v_cluster_identifier;
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
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       `Assoc bnds
    : aws_rds_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_cluster

[@@@deriving.end]

let aws_rds_cluster ?id ?tags ~cluster_identifier () :
    aws_rds_cluster =
  { cluster_identifier; id; tags }

type t = {
  arn : string prop;
  availability_zones : string list prop;
  backtrack_window : float prop;
  backup_retention_period : float prop;
  cluster_identifier : string prop;
  cluster_members : string list prop;
  cluster_resource_id : string prop;
  database_name : string prop;
  db_cluster_parameter_group_name : string prop;
  db_subnet_group_name : string prop;
  db_system_id : string prop;
  enabled_cloudwatch_logs_exports : string list prop;
  endpoint : string prop;
  engine : string prop;
  engine_mode : string prop;
  engine_version : string prop;
  final_snapshot_identifier : string prop;
  hosted_zone_id : string prop;
  iam_database_authentication_enabled : bool prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_id : string prop;
  master_user_secret : master_user_secret list prop;
  master_username : string prop;
  network_type : string prop;
  port : float prop;
  preferred_backup_window : string prop;
  preferred_maintenance_window : string prop;
  reader_endpoint : string prop;
  replication_source_identifier : string prop;
  storage_encrypted : bool prop;
  tags : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

let make ?id ?tags ~cluster_identifier __id =
  let __type = "aws_rds_cluster" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       backtrack_window =
         Prop.computed __type __id "backtrack_window";
       backup_retention_period =
         Prop.computed __type __id "backup_retention_period";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       cluster_members = Prop.computed __type __id "cluster_members";
       cluster_resource_id =
         Prop.computed __type __id "cluster_resource_id";
       database_name = Prop.computed __type __id "database_name";
       db_cluster_parameter_group_name =
         Prop.computed __type __id "db_cluster_parameter_group_name";
       db_subnet_group_name =
         Prop.computed __type __id "db_subnet_group_name";
       db_system_id = Prop.computed __type __id "db_system_id";
       enabled_cloudwatch_logs_exports =
         Prop.computed __type __id "enabled_cloudwatch_logs_exports";
       endpoint = Prop.computed __type __id "endpoint";
       engine = Prop.computed __type __id "engine";
       engine_mode = Prop.computed __type __id "engine_mode";
       engine_version = Prop.computed __type __id "engine_version";
       final_snapshot_identifier =
         Prop.computed __type __id "final_snapshot_identifier";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       iam_database_authentication_enabled =
         Prop.computed __type __id
           "iam_database_authentication_enabled";
       iam_roles = Prop.computed __type __id "iam_roles";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       master_user_secret =
         Prop.computed __type __id "master_user_secret";
       master_username = Prop.computed __type __id "master_username";
       network_type = Prop.computed __type __id "network_type";
       port = Prop.computed __type __id "port";
       preferred_backup_window =
         Prop.computed __type __id "preferred_backup_window";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       reader_endpoint = Prop.computed __type __id "reader_endpoint";
       replication_source_identifier =
         Prop.computed __type __id "replication_source_identifier";
       storage_encrypted =
         Prop.computed __type __id "storage_encrypted";
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
      yojson_of_aws_rds_cluster
        (aws_rds_cluster ?id ?tags ~cluster_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~cluster_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~cluster_identifier __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
