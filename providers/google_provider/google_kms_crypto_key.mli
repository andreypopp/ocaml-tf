(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_crypto_key__timeouts
type google_kms_crypto_key__version_template

type google_kms_crypto_key__primary = {
  name : string;  (** name *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type google_kms_crypto_key

val google_kms_crypto_key :
  ?labels:(string * string) list ->
  ?purpose:string ->
  ?rotation_period:string ->
  ?skip_initial_version_creation:bool ->
  ?timeouts:google_kms_crypto_key__timeouts ->
  key_ring:string ->
  name:string ->
  version_template:google_kms_crypto_key__version_template list ->
  string ->
  unit
