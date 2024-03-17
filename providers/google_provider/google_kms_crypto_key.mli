(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_crypto_key__timeouts
type google_kms_crypto_key__version_template

type google_kms_crypto_key__primary = {
  name : string prop;  (** name *)
  state : string prop;  (** state *)
}

type google_kms_crypto_key

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
  unit
