(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_kms_secret_ciphertext = {
  additional_authenticated_data : string prop option; [@option]
      (** The additional authenticated data used for integrity checks during encryption and decryption. *)
  crypto_key : string prop;
      (** The full name of the CryptoKey that will be used to encrypt the provided plaintext.
Format: ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}'' *)
  id : string prop option; [@option]  (** id *)
  plaintext : string prop;  (** The plaintext to be encrypted. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_kms_secret_ciphertext *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_kms_secret_ciphertext ?additional_authenticated_data ?id
    ?timeouts ~crypto_key ~plaintext () :
    google_kms_secret_ciphertext =
  {
    additional_authenticated_data;
    crypto_key;
    id;
    plaintext;
    timeouts;
  }

type t = {
  additional_authenticated_data : string prop;
  ciphertext : string prop;
  crypto_key : string prop;
  id : string prop;
  plaintext : string prop;
}

let register ?tf_module ?additional_authenticated_data ?id ?timeouts
    ~crypto_key ~plaintext __resource_id =
  let __resource_type = "google_kms_secret_ciphertext" in
  let __resource =
    google_kms_secret_ciphertext ?additional_authenticated_data ?id
      ?timeouts ~crypto_key ~plaintext ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_secret_ciphertext __resource);
  let __resource_attributes =
    ({
       additional_authenticated_data =
         Prop.computed __resource_type __resource_id
           "additional_authenticated_data";
       ciphertext =
         Prop.computed __resource_type __resource_id "ciphertext";
       crypto_key =
         Prop.computed __resource_type __resource_id "crypto_key";
       id = Prop.computed __resource_type __resource_id "id";
       plaintext =
         Prop.computed __resource_type __resource_id "plaintext";
     }
      : t)
  in
  __resource_attributes
