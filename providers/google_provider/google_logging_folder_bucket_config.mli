(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_folder_bucket_config__cmek_settings
type google_logging_folder_bucket_config__index_configs
type google_logging_folder_bucket_config

val google_logging_folder_bucket_config :
  ?description:string prop ->
  ?id:string prop ->
  ?retention_days:float prop ->
  bucket_id:string prop ->
  folder:string prop ->
  location:string prop ->
  cmek_settings:
    google_logging_folder_bucket_config__cmek_settings list ->
  index_configs:
    google_logging_folder_bucket_config__index_configs list ->
  string ->
  unit
