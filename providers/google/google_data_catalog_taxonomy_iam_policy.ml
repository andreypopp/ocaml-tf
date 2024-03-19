(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_taxonomy_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
  taxonomy : string prop;  (** taxonomy *)
}
[@@deriving yojson_of]
(** google_data_catalog_taxonomy_iam_policy *)

let google_data_catalog_taxonomy_iam_policy ?id ?project ?region
    ~policy_data ~taxonomy () :
    google_data_catalog_taxonomy_iam_policy =
  { id; policy_data; project; region; taxonomy }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
  taxonomy : string prop;
}

let register ?tf_module ?id ?project ?region ~policy_data ~taxonomy
    __resource_id =
  let __resource_type = "google_data_catalog_taxonomy_iam_policy" in
  let __resource =
    google_data_catalog_taxonomy_iam_policy ?id ?project ?region
      ~policy_data ~taxonomy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_taxonomy_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       taxonomy =
         Prop.computed __resource_type __resource_id "taxonomy";
     }
      : t)
  in
  __resource_attributes
