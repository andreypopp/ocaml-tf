(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_tags_tag_key_iam_policy = {
  policy_data : string;  (** policy_data *)
  tag_key : string;  (** tag_key *)
}
[@@deriving yojson_of]
(** google_tags_tag_key_iam_policy *)

let google_tags_tag_key_iam_policy ~policy_data ~tag_key
    __resource_id =
  let __resource_type = "google_tags_tag_key_iam_policy" in
  let __resource = { policy_data; tag_key } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_tags_tag_key_iam_policy __resource);
  ()
