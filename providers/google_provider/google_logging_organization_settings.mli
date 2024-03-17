(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_organization_settings__timeouts
type google_logging_organization_settings

val google_logging_organization_settings :
  ?disable_default_sink:bool prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?storage_location:string prop ->
  ?timeouts:google_logging_organization_settings__timeouts ->
  organization:string prop ->
  string ->
  unit
