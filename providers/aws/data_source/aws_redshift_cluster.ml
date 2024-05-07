(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cluster_nodes = {
  node_role : string prop;
  private_ip_address : string prop;
  public_ip_address : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_nodes) -> ()

let yojson_of_cluster_nodes =
  (function
   | {
       node_role = v_node_role;
       private_ip_address = v_private_ip_address;
       public_ip_address = v_public_ip_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_address
         in
         ("public_ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_role in
         ("node_role", arg) :: bnds
       in
       `Assoc bnds
    : cluster_nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_nodes

[@@@deriving.end]

type aws_redshift_cluster = {
  cluster_identifier : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_cluster) -> ()

let yojson_of_aws_redshift_cluster =
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
    : aws_redshift_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_cluster

[@@@deriving.end]

let aws_redshift_cluster ?id ?tags ~cluster_identifier () :
    aws_redshift_cluster =
  { cluster_identifier; id; tags }

type t = {
  tf_name : string;
  allow_version_upgrade : bool prop;
  aqua_configuration_status : string prop;
  arn : string prop;
  automated_snapshot_retention_period : float prop;
  availability_zone : string prop;
  availability_zone_relocation_enabled : bool prop;
  bucket_name : string prop;
  cluster_identifier : string prop;
  cluster_namespace_arn : string prop;
  cluster_nodes : cluster_nodes list prop;
  cluster_parameter_group_name : string prop;
  cluster_public_key : string prop;
  cluster_revision_number : string prop;
  cluster_subnet_group_name : string prop;
  cluster_type : string prop;
  cluster_version : string prop;
  database_name : string prop;
  default_iam_role_arn : string prop;
  elastic_ip : string prop;
  enable_logging : bool prop;
  encrypted : bool prop;
  endpoint : string prop;
  enhanced_vpc_routing : bool prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_id : string prop;
  log_destination_type : string prop;
  log_exports : string list prop;
  maintenance_track_name : string prop;
  manual_snapshot_retention_period : float prop;
  master_username : string prop;
  multi_az : bool prop;
  node_type : string prop;
  number_of_nodes : float prop;
  port : float prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  s3_key_prefix : string prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
  vpc_security_group_ids : string list prop;
}

let make ?id ?tags ~cluster_identifier __id =
  let __type = "aws_redshift_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       allow_version_upgrade =
         Prop.computed __type __id "allow_version_upgrade";
       aqua_configuration_status =
         Prop.computed __type __id "aqua_configuration_status";
       arn = Prop.computed __type __id "arn";
       automated_snapshot_retention_period =
         Prop.computed __type __id
           "automated_snapshot_retention_period";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       availability_zone_relocation_enabled =
         Prop.computed __type __id
           "availability_zone_relocation_enabled";
       bucket_name = Prop.computed __type __id "bucket_name";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       cluster_namespace_arn =
         Prop.computed __type __id "cluster_namespace_arn";
       cluster_nodes = Prop.computed __type __id "cluster_nodes";
       cluster_parameter_group_name =
         Prop.computed __type __id "cluster_parameter_group_name";
       cluster_public_key =
         Prop.computed __type __id "cluster_public_key";
       cluster_revision_number =
         Prop.computed __type __id "cluster_revision_number";
       cluster_subnet_group_name =
         Prop.computed __type __id "cluster_subnet_group_name";
       cluster_type = Prop.computed __type __id "cluster_type";
       cluster_version = Prop.computed __type __id "cluster_version";
       database_name = Prop.computed __type __id "database_name";
       default_iam_role_arn =
         Prop.computed __type __id "default_iam_role_arn";
       elastic_ip = Prop.computed __type __id "elastic_ip";
       enable_logging = Prop.computed __type __id "enable_logging";
       encrypted = Prop.computed __type __id "encrypted";
       endpoint = Prop.computed __type __id "endpoint";
       enhanced_vpc_routing =
         Prop.computed __type __id "enhanced_vpc_routing";
       iam_roles = Prop.computed __type __id "iam_roles";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       log_destination_type =
         Prop.computed __type __id "log_destination_type";
       log_exports = Prop.computed __type __id "log_exports";
       maintenance_track_name =
         Prop.computed __type __id "maintenance_track_name";
       manual_snapshot_retention_period =
         Prop.computed __type __id "manual_snapshot_retention_period";
       master_username = Prop.computed __type __id "master_username";
       multi_az = Prop.computed __type __id "multi_az";
       node_type = Prop.computed __type __id "node_type";
       number_of_nodes = Prop.computed __type __id "number_of_nodes";
       port = Prop.computed __type __id "port";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       s3_key_prefix = Prop.computed __type __id "s3_key_prefix";
       tags = Prop.computed __type __id "tags";
       vpc_id = Prop.computed __type __id "vpc_id";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_cluster
        (aws_redshift_cluster ?id ?tags ~cluster_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~cluster_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~cluster_identifier __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
