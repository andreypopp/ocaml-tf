(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_policy_tag_iam_policy = {
  id : string option; [@option]  (** id *)
  policy_data : string;  (** policy_data *)
  policy_tag : string;  (** policy_tag *)
}
[@@deriving yojson_of]
(** google_data_catalog_policy_tag_iam_policy *)

let google_data_catalog_policy_tag_iam_policy ?id ~policy_data
    ~policy_tag __resource_id =
  let __resource_type =
    "google_data_catalog_policy_tag_iam_policy"
  in
  let __resource = { id; policy_data; policy_tag } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_policy_tag_iam_policy __resource);
  ()
