(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_kms_secret_ciphertext__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_kms_secret_ciphertext__timeouts *)

type google_kms_secret_ciphertext = {
  additional_authenticated_data : string prop option; [@option]
      (** The additional authenticated data used for integrity checks during encryption and decryption. *)
  crypto_key : string prop;
      (** The full name of the CryptoKey that will be used to encrypt the provided plaintext.
Format: ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}'' *)
  id : string prop option; [@option]  (** id *)
  plaintext : string prop;  (** The plaintext to be encrypted. *)
  timeouts : google_kms_secret_ciphertext__timeouts option;
}
[@@deriving yojson_of]
(** google_kms_secret_ciphertext *)

let google_kms_secret_ciphertext ?additional_authenticated_data ?id
    ?timeouts ~crypto_key ~plaintext __resource_id =
  let __resource_type = "google_kms_secret_ciphertext" in
  let __resource =
    {
      additional_authenticated_data;
      crypto_key;
      id;
      plaintext;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_secret_ciphertext __resource);
  ()
