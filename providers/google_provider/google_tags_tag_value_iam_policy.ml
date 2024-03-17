(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_tags_tag_value_iam_policy = {
  id : string option; [@option]  (** id *)
  policy_data : string;  (** policy_data *)
  tag_value : string;  (** tag_value *)
}
[@@deriving yojson_of]
(** google_tags_tag_value_iam_policy *)

let google_tags_tag_value_iam_policy ?id ~policy_data ~tag_value
    __resource_id =
  let __resource_type = "google_tags_tag_value_iam_policy" in
  let __resource = { id; policy_data; tag_value } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_tags_tag_value_iam_policy __resource);
  ()
