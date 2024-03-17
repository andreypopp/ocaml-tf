(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_replication_config__compute_config
type aws_dms_replication_config__timeouts
type aws_dms_replication_config

val aws_dms_replication_config :
  ?id:string prop ->
  ?replication_settings:string prop ->
  ?resource_identifier:string prop ->
  ?start_replication:bool prop ->
  ?supplemental_settings:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_dms_replication_config__timeouts ->
  replication_config_identifier:string prop ->
  replication_type:string prop ->
  source_endpoint_arn:string prop ->
  table_mappings:string prop ->
  target_endpoint_arn:string prop ->
  compute_config:aws_dms_replication_config__compute_config list ->
  string ->
  unit
