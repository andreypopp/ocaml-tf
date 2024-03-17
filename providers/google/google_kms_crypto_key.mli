(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_crypto_key__timeouts
type google_kms_crypto_key__version_template

type google_kms_crypto_key__primary = {
  name : string prop;  (** name *)
  state : string prop;  (** state *)
}

type google_kms_crypto_key

type t = private {
  destroy_scheduled_duration : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  import_only : bool prop;
  key_ring : string prop;
  labels : (string * string) list prop;
  name : string prop;
  primary : google_kms_crypto_key__primary list prop;
  purpose : string prop;
  rotation_period : string prop;
  skip_initial_version_creation : bool prop;
  terraform_labels : (string * string) list prop;
}

val google_kms_crypto_key :
  ?destroy_scheduled_duration:string prop ->
  ?id:string prop ->
  ?import_only:bool prop ->
  ?labels:(string * string prop) list ->
  ?purpose:string prop ->
  ?rotation_period:string prop ->
  ?skip_initial_version_creation:bool prop ->
  ?timeouts:google_kms_crypto_key__timeouts ->
  key_ring:string prop ->
  name:string prop ->
  version_template:google_kms_crypto_key__version_template list ->
  string ->
  t
