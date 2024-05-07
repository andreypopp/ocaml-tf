(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cmek_settings

val cmek_settings : kms_key_name:string prop -> unit -> cmek_settings

type index_configs

val index_configs :
  field_path:string prop ->
  type_:string prop ->
  unit ->
  index_configs

type google_logging_project_bucket_config

val google_logging_project_bucket_config :
  ?description:string prop ->
  ?enable_analytics:bool prop ->
  ?id:string prop ->
  ?locked:bool prop ->
  ?retention_days:float prop ->
  ?cmek_settings:cmek_settings list ->
  bucket_id:string prop ->
  location:string prop ->
  project:string prop ->
  index_configs:index_configs list ->
  unit ->
  google_logging_project_bucket_config

val yojson_of_google_logging_project_bucket_config :
  google_logging_project_bucket_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket_id : string prop;
  description : string prop;
  enable_analytics : bool prop;
  id : string prop;
  lifecycle_state : string prop;
  location : string prop;
  locked : bool prop;
  name : string prop;
  project : string prop;
  retention_days : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enable_analytics:bool prop ->
  ?id:string prop ->
  ?locked:bool prop ->
  ?retention_days:float prop ->
  ?cmek_settings:cmek_settings list ->
  bucket_id:string prop ->
  location:string prop ->
  project:string prop ->
  index_configs:index_configs list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?enable_analytics:bool prop ->
  ?id:string prop ->
  ?locked:bool prop ->
  ?retention_days:float prop ->
  ?cmek_settings:cmek_settings list ->
  bucket_id:string prop ->
  location:string prop ->
  project:string prop ->
  index_configs:index_configs list ->
  string ->
  t Tf_core.resource
