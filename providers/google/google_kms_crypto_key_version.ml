(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type attestation__external_protection_level_options = {
  ekm_connection_key_path : string prop;
      (** ekm_connection_key_path *)
  external_key_uri : string prop;  (** external_key_uri *)
}
[@@deriving yojson_of]

type attestation__cert_chains = {
  cavium_certs : string prop list;  (** cavium_certs *)
  google_card_certs : string prop list;  (** google_card_certs *)
  google_partition_certs : string prop list;
      (** google_partition_certs *)
}
[@@deriving yojson_of]

type attestation = {
  cert_chains : attestation__cert_chains list;  (** cert_chains *)
  content : string prop;  (** content *)
  external_protection_level_options :
    attestation__external_protection_level_options list;
      (** external_protection_level_options *)
  format : string prop;  (** format *)
}
[@@deriving yojson_of]

type google_kms_crypto_key_version = {
  crypto_key : string prop;
      (** The name of the cryptoKey associated with the CryptoKeyVersions.
Format: ''projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}'' *)
  id : string prop option; [@option]  (** id *)
  state : string prop option; [@option]
      (** The current state of the CryptoKeyVersion. Possible values: [PENDING_GENERATION, ENABLED, DISABLED, DESTROYED, DESTROY_SCHEDULED, PENDING_IMPORT, IMPORT_FAILED] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_kms_crypto_key_version *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_kms_crypto_key_version ?id ?state ?timeouts ~crypto_key ()
    : google_kms_crypto_key_version =
  { crypto_key; id; state; timeouts }

type t = {
  algorithm : string prop;
  attestation : attestation list prop;
  crypto_key : string prop;
  generate_time : string prop;
  id : string prop;
  name : string prop;
  protection_level : string prop;
  state : string prop;
}

let register ?tf_module ?id ?state ?timeouts ~crypto_key
    __resource_id =
  let __resource_type = "google_kms_crypto_key_version" in
  let __resource =
    google_kms_crypto_key_version ?id ?state ?timeouts ~crypto_key ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_crypto_key_version __resource);
  let __resource_attributes =
    ({
       algorithm =
         Prop.computed __resource_type __resource_id "algorithm";
       attestation =
         Prop.computed __resource_type __resource_id "attestation";
       crypto_key =
         Prop.computed __resource_type __resource_id "crypto_key";
       generate_time =
         Prop.computed __resource_type __resource_id "generate_time";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       protection_level =
         Prop.computed __resource_type __resource_id
           "protection_level";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
