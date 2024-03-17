(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_replication_config__compute_config
type aws_dms_replication_config__timeouts
type aws_dms_replication_config

val aws_dms_replication_config :
  ?start_replication:bool ->
  ?supplemental_settings:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_dms_replication_config__timeouts ->
  replication_config_identifier:string ->
  replication_type:string ->
  source_endpoint_arn:string ->
  table_mappings:string ->
  target_endpoint_arn:string ->
  compute_config:aws_dms_replication_config__compute_config list ->
  string ->
  unit
