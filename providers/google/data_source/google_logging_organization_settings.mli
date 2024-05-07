(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_logging_organization_settings

val google_logging_organization_settings :
  ?id:string prop ->
  organization:string prop ->
  unit ->
  google_logging_organization_settings

val yojson_of_google_logging_organization_settings :
  google_logging_organization_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  disable_default_sink : bool prop;
  id : string prop;
  kms_key_name : string prop;
  kms_service_account_id : string prop;
  logging_service_account_id : string prop;
  name : string prop;
  organization : string prop;
  storage_location : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  organization:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  organization:string prop ->
  string ->
  t Tf_core.resource
