(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type public_key = {
  algorithm : string prop;  (** algorithm *)
  pem : string prop;  (** pem *)
}

type google_kms_crypto_key_version

val google_kms_crypto_key_version :
  ?id:string prop ->
  ?version:float prop ->
  crypto_key:string prop ->
  unit ->
  google_kms_crypto_key_version

val yojson_of_google_kms_crypto_key_version :
  google_kms_crypto_key_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  algorithm : string prop;
  crypto_key : string prop;
  id : string prop;
  name : string prop;
  protection_level : string prop;
  public_key : public_key list prop;
  state : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?version:float prop ->
  crypto_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?version:float prop ->
  crypto_key:string prop ->
  string ->
  t Tf_core.resource
