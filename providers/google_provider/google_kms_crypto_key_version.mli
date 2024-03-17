(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_kms_crypto_key_version__timeouts

type google_kms_crypto_key_version__attestation__external_protection_level_options = {
  ekm_connection_key_path : string;  (** ekm_connection_key_path *)
  external_key_uri : string;  (** external_key_uri *)
}
[@@deriving yojson_of]

type google_kms_crypto_key_version__attestation__cert_chains = {
  cavium_certs : string list;  (** cavium_certs *)
  google_card_certs : string list;  (** google_card_certs *)
  google_partition_certs : string list;  (** google_partition_certs *)
}
[@@deriving yojson_of]

type google_kms_crypto_key_version__attestation = {
  cert_chains :
    google_kms_crypto_key_version__attestation__cert_chains list;
      (** cert_chains *)
  content : string;  (** content *)
  external_protection_level_options :
    google_kms_crypto_key_version__attestation__external_protection_level_options
    list;
      (** external_protection_level_options *)
  format : string;  (** format *)
}
[@@deriving yojson_of]

type google_kms_crypto_key_version

val google_kms_crypto_key_version :
  ?timeouts:google_kms_crypto_key_version__timeouts ->
  crypto_key:string ->
  string ->
  unit
