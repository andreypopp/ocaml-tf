(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_kms_key_ring_iam_policy = {
  key_ring_id : string;  (** key_ring_id *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_kms_key_ring_iam_policy *)

let google_kms_key_ring_iam_policy ~key_ring_id ~policy_data
    __resource_id =
  let __resource_type = "google_kms_key_ring_iam_policy" in
  let __resource = { key_ring_id; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_key_ring_iam_policy __resource);
  ()
