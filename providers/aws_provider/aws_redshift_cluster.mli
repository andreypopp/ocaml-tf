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
[@@deriving yojson_of]

type aws_redshift_cluster

val aws_redshift_cluster :
  ?allow_version_upgrade:bool ->
  ?apply_immediately:bool ->
  ?automated_snapshot_retention_period:float ->
  ?availability_zone_relocation_enabled:bool ->
  ?cluster_version:string ->
  ?elastic_ip:string ->
  ?encrypted:bool ->
  ?final_snapshot_identifier:string ->
  ?maintenance_track_name:string ->
  ?manage_master_password:bool ->
  ?manual_snapshot_retention_period:float ->
  ?master_password:string ->
  ?master_username:string ->
  ?multi_az:bool ->
  ?number_of_nodes:float ->
  ?owner_account:string ->
  ?port:float ->
  ?publicly_accessible:bool ->
  ?skip_final_snapshot:bool ->
  ?snapshot_arn:string ->
  ?snapshot_cluster_identifier:string ->
  ?snapshot_identifier:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_redshift_cluster__timeouts ->
  cluster_identifier:string ->
  node_type:string ->
  logging:aws_redshift_cluster__logging list ->
  snapshot_copy:aws_redshift_cluster__snapshot_copy list ->
  string ->
  unit
