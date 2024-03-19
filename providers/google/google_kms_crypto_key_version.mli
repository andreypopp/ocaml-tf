(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type attestation__external_protection_level_options = {
  ekm_connection_key_path : string prop;
      (** ekm_connection_key_path *)
  external_key_uri : string prop;  (** external_key_uri *)
}

type attestation__cert_chains = {
  cavium_certs : string prop list;  (** cavium_certs *)
  google_card_certs : string prop list;  (** google_card_certs *)
  google_partition_certs : string prop list;
      (** google_partition_certs *)
}

type attestation = {
  cert_chains : attestation__cert_chains list;  (** cert_chains *)
  content : string prop;  (** content *)
  external_protection_level_options :
    attestation__external_protection_level_options list;
      (** external_protection_level_options *)
  format : string prop;  (** format *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_kms_crypto_key_version

val google_kms_crypto_key_version :
  ?id:string prop ->
  ?state:string prop ->
  ?timeouts:timeouts ->
  crypto_key:string prop ->
  unit ->
  google_kms_crypto_key_version

val yojson_of_google_kms_crypto_key_version :
  google_kms_crypto_key_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  algorithm : string prop;
  attestation : attestation list prop;
  crypto_key : string prop;
  generate_time : string prop;
  id : string prop;
  name : string prop;
  protection_level : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?state:string prop ->
  ?timeouts:timeouts ->
  crypto_key:string prop ->
  string ->
  t
