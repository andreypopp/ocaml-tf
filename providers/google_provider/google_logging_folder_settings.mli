(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_folder_settings__timeouts
type google_logging_folder_settings

val google_logging_folder_settings :
  ?disable_default_sink:bool prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?storage_location:string prop ->
  ?timeouts:google_logging_folder_settings__timeouts ->
  folder:string prop ->
  string ->
  unit
