(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_folder_settings__timeouts
type google_logging_folder_settings

val google_logging_folder_settings :
  ?disable_default_sink:bool ->
  ?id:string ->
  ?kms_key_name:string ->
  ?storage_location:string ->
  ?timeouts:google_logging_folder_settings__timeouts ->
  folder:string ->
  string ->
  unit
