(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cluster_nodes = {
  node_role : string prop;  (** node_role *)
  private_ip_address : string prop;  (** private_ip_address *)
  public_ip_address : string prop;  (** public_ip_address *)
}

type aws_redshift_cluster

val aws_redshift_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_identifier:string prop ->
  unit ->
  aws_redshift_cluster

val yojson_of_aws_redshift_cluster : aws_redshift_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_identifier:string prop ->
  string ->
  t Tf_core.resource
