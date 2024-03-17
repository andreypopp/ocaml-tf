(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_crypto_key_version__timeouts

type google_kms_crypto_key_version__attestation__external_protection_level_options = {
  ekm_connection_key_path : string prop;
      (** ekm_connection_key_path *)
  external_key_uri : string prop;  (** external_key_uri *)
}

type google_kms_crypto_key_version__attestation__cert_chains = {
  cavium_certs : string prop list;  (** cavium_certs *)
  google_card_certs : string prop list;  (** google_card_certs *)
  google_partition_certs : string prop list;
      (** google_partition_certs *)
}

type google_kms_crypto_key_version__attestation = {
  cert_chains :
    google_kms_crypto_key_version__attestation__cert_chains list;
      (** cert_chains *)
  content : string prop;  (** content *)
  external_protection_level_options :
    google_kms_crypto_key_version__attestation__external_protection_level_options
    list;
      (** external_protection_level_options *)
  format : string prop;  (** format *)
}

type google_kms_crypto_key_version

type t = private {
  algorithm : string prop;
  attestation : google_kms_crypto_key_version__attestation list prop;
  crypto_key : string prop;
  generate_time : string prop;
  id : string prop;
  name : string prop;
  protection_level : string prop;
  state : string prop;
}

val google_kms_crypto_key_version :
  ?id:string prop ->
  ?state:string prop ->
  ?timeouts:google_kms_crypto_key_version__timeouts ->
  crypto_key:string prop ->
  string ->
  t
