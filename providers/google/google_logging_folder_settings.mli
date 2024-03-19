(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_logging_folder_settings

val google_logging_folder_settings :
  ?disable_default_sink:bool prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?storage_location:string prop ->
  ?timeouts:timeouts ->
  folder:string prop ->
  unit ->
  google_logging_folder_settings

val yojson_of_google_logging_folder_settings :
  google_logging_folder_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  disable_default_sink : bool prop;
  folder : string prop;
  id : string prop;
  kms_key_name : string prop;
  kms_service_account_id : string prop;
  logging_service_account_id : string prop;
  name : string prop;
  storage_location : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disable_default_sink:bool prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?storage_location:string prop ->
  ?timeouts:timeouts ->
  folder:string prop ->
  string ->
  t
