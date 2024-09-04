(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type keys__version_template = {
  algorithm : string prop;  (** algorithm *)
  protection_level : string prop;  (** protection_level *)
}

type keys__primary = {
  name : string prop;  (** name *)
  state : string prop;  (** state *)
}

type keys = {
  crypto_key_backend : string prop;  (** crypto_key_backend *)
  destroy_scheduled_duration : string prop;
      (** destroy_scheduled_duration *)
  effective_labels : string prop Tf_core.assoc;
      (** effective_labels *)
  id : string prop;  (** id *)
  import_only : bool prop;  (** import_only *)
  key_ring : string prop;  (** key_ring *)
  labels : string prop Tf_core.assoc;  (** labels *)
  name : string prop;  (** name *)
  primary : keys__primary list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** primary *)
  purpose : string prop;  (** purpose *)
  rotation_period : string prop;  (** rotation_period *)
  skip_initial_version_creation : bool prop;
      (** skip_initial_version_creation *)
  terraform_labels : string prop Tf_core.assoc;
      (** terraform_labels *)
  version_template : keys__version_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** version_template *)
}

type google_kms_crypto_keys

val google_kms_crypto_keys :
  ?filter:string prop ->
  ?id:string prop ->
  key_ring:string prop ->
  unit ->
  google_kms_crypto_keys

val yojson_of_google_kms_crypto_keys : google_kms_crypto_keys -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  filter : string prop;
  id : string prop;
  key_ring : string prop;
  keys : keys list prop;
}

val register :
  ?tf_module:tf_module ->
  ?filter:string prop ->
  ?id:string prop ->
  key_ring:string prop ->
  string ->
  t

val make :
  ?filter:string prop ->
  ?id:string prop ->
  key_ring:string prop ->
  string ->
  t Tf_core.resource
