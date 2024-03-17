(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_kms_crypto_key_version__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_kms_crypto_key_version__timeouts *)

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

type google_kms_crypto_key_version = {
  crypto_key : string;
      (** The name of the cryptoKey associated with the CryptoKeyVersions.
Format: ''projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}'' *)
  timeouts : google_kms_crypto_key_version__timeouts option;
}
[@@deriving yojson_of]
(** google_kms_crypto_key_version *)

let google_kms_crypto_key_version ?timeouts ~crypto_key __resource_id
    =
  let __resource_type = "google_kms_crypto_key_version" in
  let __resource = { crypto_key; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_crypto_key_version __resource);
  ()
