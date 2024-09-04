(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type primary = {
  name : string prop;  (** name *)
  state : string prop;  (** state *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type version_template

val version_template :
  ?protection_level:string prop ->
  algorithm:string prop ->
  unit ->
  version_template

type google_kms_crypto_key

val google_kms_crypto_key :
  ?crypto_key_backend:string prop ->
  ?destroy_scheduled_duration:string prop ->
  ?id:string prop ->
  ?import_only:bool prop ->
  ?labels:string prop Tf_core.assoc ->
  ?purpose:string prop ->
  ?rotation_period:string prop ->
  ?skip_initial_version_creation:bool prop ->
  ?timeouts:timeouts ->
  ?version_template:version_template list ->
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
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  import_only : bool prop;
  key_ring : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  primary : primary list prop;
  purpose : string prop;
  rotation_period : string prop;
  skip_initial_version_creation : bool prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?crypto_key_backend:string prop ->
  ?destroy_scheduled_duration:string prop ->
  ?id:string prop ->
  ?import_only:bool prop ->
  ?labels:string prop Tf_core.assoc ->
  ?purpose:string prop ->
  ?rotation_period:string prop ->
  ?skip_initial_version_creation:bool prop ->
  ?timeouts:timeouts ->
  ?version_template:version_template list ->
  key_ring:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?crypto_key_backend:string prop ->
  ?destroy_scheduled_duration:string prop ->
  ?id:string prop ->
  ?import_only:bool prop ->
  ?labels:string prop Tf_core.assoc ->
  ?purpose:string prop ->
  ?rotation_period:string prop ->
  ?skip_initial_version_creation:bool prop ->
  ?timeouts:timeouts ->
  ?version_template:version_template list ->
  key_ring:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
