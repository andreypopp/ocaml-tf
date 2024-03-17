(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_taxonomy_iam_policy = {
  id : string option; [@option]  (** id *)
  policy_data : string;  (** policy_data *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]  (** region *)
  taxonomy : string;  (** taxonomy *)
}
[@@deriving yojson_of]
(** google_data_catalog_taxonomy_iam_policy *)

let google_data_catalog_taxonomy_iam_policy ?id ?project ?region
    ~policy_data ~taxonomy __resource_id =
  let __resource_type = "google_data_catalog_taxonomy_iam_policy" in
  let __resource = { id; policy_data; project; region; taxonomy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_taxonomy_iam_policy __resource);
  ()
