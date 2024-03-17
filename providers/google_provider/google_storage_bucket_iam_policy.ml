(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_bucket_iam_policy = {
  bucket : string;  (** bucket *)
  id : string option; [@option]  (** id *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_storage_bucket_iam_policy *)

let google_storage_bucket_iam_policy ?id ~bucket ~policy_data
    __resource_id =
  let __resource_type = "google_storage_bucket_iam_policy" in
  let __resource = { bucket; id; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket_iam_policy __resource);
  ()
