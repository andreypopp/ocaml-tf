(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_cluster__logging
type aws_redshift_cluster__snapshot_copy
type aws_redshift_cluster__timeouts

type aws_redshift_cluster__cluster_nodes = {
  node_role : string;  (** node_role *)
  private_ip_address : string;  (** private_ip_address *)
  public_ip_address : string;  (** public_ip_address *)
}

type aws_redshift_cluster

val aws_redshift_cluster :
  ?allow_version_upgrade:bool ->
  ?apply_immediately:bool ->
  ?aqua_configuration_status:string ->
  ?automated_snapshot_retention_period:float ->
  ?availability_zone:string ->
  ?availability_zone_relocation_enabled:bool ->
  ?cluster_parameter_group_name:string ->
  ?cluster_public_key:string ->
  ?cluster_revision_number:string ->
  ?cluster_subnet_group_name:string ->
  ?cluster_type:string ->
  ?cluster_version:string ->
  ?database_name:string ->
  ?default_iam_role_arn:string ->
  ?elastic_ip:string ->
  ?encrypted:bool ->
  ?endpoint:string ->
  ?enhanced_vpc_routing:bool ->
  ?final_snapshot_identifier:string ->
  ?iam_roles:string list ->
  ?id:string ->
  ?kms_key_id:string ->
  ?maintenance_track_name:string ->
  ?manage_master_password:bool ->
  ?manual_snapshot_retention_period:float ->
  ?master_password:string ->
  ?master_password_secret_kms_key_id:string ->
  ?master_username:string ->
  ?multi_az:bool ->
  ?number_of_nodes:float ->
  ?owner_account:string ->
  ?port:float ->
  ?preferred_maintenance_window:string ->
  ?publicly_accessible:bool ->
  ?skip_final_snapshot:bool ->
  ?snapshot_arn:string ->
  ?snapshot_cluster_identifier:string ->
  ?snapshot_identifier:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpc_security_group_ids:string list ->
  ?timeouts:aws_redshift_cluster__timeouts ->
  cluster_identifier:string ->
  node_type:string ->
  logging:aws_redshift_cluster__logging list ->
  snapshot_copy:aws_redshift_cluster__snapshot_copy list ->
  string ->
  unit
