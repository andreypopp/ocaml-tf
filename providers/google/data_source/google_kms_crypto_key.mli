(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type primary = {
  name : string prop;  (** name *)
  state : string prop;  (** state *)
}

type version_template = {
  algorithm : string prop;  (** algorithm *)
  protection_level : string prop;  (** protection_level *)
}

type google_kms_crypto_key

val google_kms_crypto_key :
  ?id:string prop ->
  key_ring:string prop ->
  name:string prop ->
  unit ->
  google_kms_crypto_key

val yojson_of_google_kms_crypto_key : google_kms_crypto_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  crypto_key_backend : string prop;
  destroy_scheduled_duration : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  import_only : bool prop;
  key_ring : string prop;
  labels : (string * string) list prop;
  name : string prop;
  primary : primary list prop;
  purpose : string prop;
  rotation_period : string prop;
  skip_initial_version_creation : bool prop;
  terraform_labels : (string * string) list prop;
  version_template : version_template list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  key_ring:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  key_ring:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
