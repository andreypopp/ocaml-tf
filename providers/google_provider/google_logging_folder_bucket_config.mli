(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_folder_bucket_config__cmek_settings
type google_logging_folder_bucket_config__index_configs
type google_logging_folder_bucket_config

val google_logging_folder_bucket_config :
  ?description:string ->
  ?id:string ->
  ?retention_days:float ->
  bucket_id:string ->
  folder:string ->
  location:string ->
  cmek_settings:
    google_logging_folder_bucket_config__cmek_settings list ->
  index_configs:
    google_logging_folder_bucket_config__index_configs list ->
  string ->
  unit
