(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?additional_authenticated_data ?id ?timeouts ~crypto_key
    ~plaintext __id =
  let __type = "google_kms_secret_ciphertext" in
  let __attrs =
    ({
       additional_authenticated_data =
         Prop.computed __type __id "additional_authenticated_data";
       ciphertext = Prop.computed __type __id "ciphertext";
       crypto_key = Prop.computed __type __id "crypto_key";
       id = Prop.computed __type __id "id";
       plaintext = Prop.computed __type __id "plaintext";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_secret_ciphertext
        (google_kms_secret_ciphertext ?additional_authenticated_data
           ?id ?timeouts ~crypto_key ~plaintext ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_authenticated_data ?id ?timeouts
    ~crypto_key ~plaintext __id =
  let (r : _ Tf_core.resource) =
    make ?additional_authenticated_data ?id ?timeouts ~crypto_key
      ~plaintext __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
