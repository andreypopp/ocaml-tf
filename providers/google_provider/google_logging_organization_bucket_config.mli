(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_organization_bucket_config__cmek_settings
type google_logging_organization_bucket_config__index_configs
type google_logging_organization_bucket_config

val google_logging_organization_bucket_config :
  ?retention_days:float ->
  bucket_id:string ->
  location:string ->
  organization:string ->
  cmek_settings:
    google_logging_organization_bucket_config__cmek_settings list ->
  index_configs:
    google_logging_organization_bucket_config__index_configs list ->
  string ->
  unit
