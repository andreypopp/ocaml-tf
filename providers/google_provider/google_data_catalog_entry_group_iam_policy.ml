(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_data_catalog_entry_group_iam_policy = {
  entry_group : string;  (** entry_group *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_data_catalog_entry_group_iam_policy *)

let google_data_catalog_entry_group_iam_policy ~entry_group
    ~policy_data __resource_id =
  let __resource_type =
    "google_data_catalog_entry_group_iam_policy"
  in
  let __resource = { entry_group; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_entry_group_iam_policy __resource);
  ()
