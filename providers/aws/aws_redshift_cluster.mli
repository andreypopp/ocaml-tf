(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cluster_nodes = {
  node_role : string prop;  (** node_role *)
  private_ip_address : string prop;  (** private_ip_address *)
  public_ip_address : string prop;  (** public_ip_address *)
}

type logging

val logging :
  ?bucket_name:string prop ->
  ?log_destination_type:string prop ->
  ?log_exports:string prop list ->
  ?s3_key_prefix:string prop ->
  enable:bool prop ->
  unit ->
  logging

type snapshot_copy

val snapshot_copy :
  ?grant_name:string prop ->
  ?retention_period:float prop ->
  destination_region:string prop ->
  unit ->
  snapshot_copy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_redshift_cluster

val aws_redshift_cluster :
  ?allow_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?aqua_configuration_status:string prop ->
  ?automated_snapshot_retention_period:float prop ->
  ?availability_zone:string prop ->
  ?availability_zone_relocation_enabled:bool prop ->
  ?cluster_parameter_group_name:string prop ->
  ?cluster_public_key:string prop ->
  ?cluster_revision_number:string prop ->
  ?cluster_subnet_group_name:string prop ->
  ?cluster_type:string prop ->
  ?cluster_version:string prop ->
  ?database_name:string prop ->
  ?default_iam_role_arn:string prop ->
  ?elastic_ip:string prop ->
  ?encrypted:bool prop ->
  ?endpoint:string prop ->
  ?enhanced_vpc_routing:bool prop ->
  ?final_snapshot_identifier:string prop ->
  ?iam_roles:string prop list ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?maintenance_track_name:string prop ->
  ?manage_master_password:bool prop ->
  ?manual_snapshot_retention_period:float prop ->
  ?master_password:string prop ->
  ?master_password_secret_kms_key_id:string prop ->
  ?master_username:string prop ->
  ?multi_az:bool prop ->
  ?number_of_nodes:float prop ->
  ?owner_account:string prop ->
  ?port:float prop ->
  ?preferred_maintenance_window:string prop ->
  ?publicly_accessible:bool prop ->
  ?skip_final_snapshot:bool prop ->
  ?snapshot_arn:string prop ->
  ?snapshot_cluster_identifier:string prop ->
  ?snapshot_identifier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  node_type:string prop ->
  logging:logging list ->
  snapshot_copy:snapshot_copy list ->
  unit ->
  aws_redshift_cluster

val yojson_of_aws_redshift_cluster : aws_redshift_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_version_upgrade : bool prop;
  apply_immediately : bool prop;
  aqua_configuration_status : string prop;
  arn : string prop;
  automated_snapshot_retention_period : float prop;
  availability_zone : string prop;
  availability_zone_relocation_enabled : bool prop;
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
  dns_name : string prop;
  elastic_ip : string prop;
  encrypted : bool prop;
  endpoint : string prop;
  enhanced_vpc_routing : bool prop;
  final_snapshot_identifier : string prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_id : string prop;
  maintenance_track_name : string prop;
  manage_master_password : bool prop;
  manual_snapshot_retention_period : float prop;
  master_password : string prop;
  master_password_secret_arn : string prop;
  master_password_secret_kms_key_id : string prop;
  master_username : string prop;
  multi_az : bool prop;
  node_type : string prop;
  number_of_nodes : float prop;
  owner_account : string prop;
  port : float prop;
  preferred_maintenance_window : string prop;
  publicly_accessible : bool prop;
  skip_final_snapshot : bool prop;
  snapshot_arn : string prop;
  snapshot_cluster_identifier : string prop;
  snapshot_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_version_upgrade:bool prop ->
  ?apply_immediately:bool prop ->
  ?aqua_configuration_status:string prop ->
  ?automated_snapshot_retention_period:float prop ->
  ?availability_zone:string prop ->
  ?availability_zone_relocation_enabled:bool prop ->
  ?cluster_parameter_group_name:string prop ->
  ?cluster_public_key:string prop ->
  ?cluster_revision_number:string prop ->
  ?cluster_subnet_group_name:string prop ->
  ?cluster_type:string prop ->
  ?cluster_version:string prop ->
  ?database_name:string prop ->
  ?default_iam_role_arn:string prop ->
  ?elastic_ip:string prop ->
  ?encrypted:bool prop ->
  ?endpoint:string prop ->
  ?enhanced_vpc_routing:bool prop ->
  ?final_snapshot_identifier:string prop ->
  ?iam_roles:string prop list ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?maintenance_track_name:string prop ->
  ?manage_master_password:bool prop ->
  ?manual_snapshot_retention_period:float prop ->
  ?master_password:string prop ->
  ?master_password_secret_kms_key_id:string prop ->
  ?master_username:string prop ->
  ?multi_az:bool prop ->
  ?number_of_nodes:float prop ->
  ?owner_account:string prop ->
  ?port:float prop ->
  ?preferred_maintenance_window:string prop ->
  ?publicly_accessible:bool prop ->
  ?skip_final_snapshot:bool prop ->
  ?snapshot_arn:string prop ->
  ?snapshot_cluster_identifier:string prop ->
  ?snapshot_identifier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  node_type:string prop ->
  logging:logging list ->
  snapshot_copy:snapshot_copy list ->
  string ->
  t
