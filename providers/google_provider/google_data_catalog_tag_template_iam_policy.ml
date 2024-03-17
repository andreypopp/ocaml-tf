(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_data_catalog_tag_template_iam_policy = {
  policy_data : string;  (** policy_data *)
  tag_template : string;  (** tag_template *)
}
[@@deriving yojson_of]
(** google_data_catalog_tag_template_iam_policy *)

let google_data_catalog_tag_template_iam_policy ~policy_data
    ~tag_template __resource_id =
  let __resource_type =
    "google_data_catalog_tag_template_iam_policy"
  in
  let __resource = { policy_data; tag_template } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_tag_template_iam_policy __resource);
  ()
