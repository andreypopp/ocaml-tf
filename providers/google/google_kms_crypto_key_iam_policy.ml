(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_kms_crypto_key_iam_policy = {
  crypto_key_id : string prop;  (** crypto_key_id *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_kms_crypto_key_iam_policy *)

let google_kms_crypto_key_iam_policy ?id ~crypto_key_id ~policy_data
    () : google_kms_crypto_key_iam_policy =
  { crypto_key_id; id; policy_data }

type t = {
  crypto_key_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

let register ?tf_module ?id ~crypto_key_id ~policy_data __resource_id
    =
  let __resource_type = "google_kms_crypto_key_iam_policy" in
  let __resource =
    google_kms_crypto_key_iam_policy ?id ~crypto_key_id ~policy_data
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_crypto_key_iam_policy __resource);
  let __resource_attributes =
    ({
       crypto_key_id =
         Prop.computed __resource_type __resource_id "crypto_key_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
     }
      : t)
  in
  __resource_attributes
