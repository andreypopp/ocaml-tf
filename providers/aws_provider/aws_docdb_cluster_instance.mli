(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_docdb_cluster_instance__timeouts
type aws_docdb_cluster_instance

val aws_docdb_cluster_instance :
  ?apply_immediately:bool prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?availability_zone:string prop ->
  ?ca_cert_identifier:string prop ->
  ?copy_tags_to_snapshot:bool prop ->
  ?enable_performance_insights:bool prop ->
  ?engine:string prop ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?identifier_prefix:string prop ->
  ?performance_insights_kms_key_id:string prop ->
  ?preferred_maintenance_window:string prop ->
  ?promotion_tier:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_docdb_cluster_instance__timeouts ->
  cluster_identifier:string prop ->
  instance_class:string prop ->
  string ->
  unit
