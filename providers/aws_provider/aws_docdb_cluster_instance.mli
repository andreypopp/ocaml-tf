(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_docdb_cluster_instance__timeouts
type aws_docdb_cluster_instance

val aws_docdb_cluster_instance :
  ?apply_immediately:bool ->
  ?auto_minor_version_upgrade:bool ->
  ?availability_zone:string ->
  ?ca_cert_identifier:string ->
  ?copy_tags_to_snapshot:bool ->
  ?enable_performance_insights:bool ->
  ?engine:string ->
  ?id:string ->
  ?identifier:string ->
  ?identifier_prefix:string ->
  ?performance_insights_kms_key_id:string ->
  ?preferred_maintenance_window:string ->
  ?promotion_tier:float ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_docdb_cluster_instance__timeouts ->
  cluster_identifier:string ->
  instance_class:string ->
  string ->
  unit
