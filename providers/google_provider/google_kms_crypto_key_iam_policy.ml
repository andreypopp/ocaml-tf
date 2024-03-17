(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_kms_crypto_key_iam_policy = {
  crypto_key_id : string;  (** crypto_key_id *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_kms_crypto_key_iam_policy *)

let google_kms_crypto_key_iam_policy ~crypto_key_id ~policy_data
    __resource_id =
  let __resource_type = "google_kms_crypto_key_iam_policy" in
  let __resource = { crypto_key_id; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_crypto_key_iam_policy __resource);
  ()
