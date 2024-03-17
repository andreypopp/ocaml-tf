(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_dataset_iam_policy = {
  dataset_id : string prop;  (** dataset_id *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_bigquery_dataset_iam_policy *)

type t = {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
}

let google_bigquery_dataset_iam_policy ?id ?project ~dataset_id
    ~policy_data __resource_id =
  let __resource_type = "google_bigquery_dataset_iam_policy" in
  let __resource =
    ({ dataset_id; id; policy_data; project }
      : google_bigquery_dataset_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_dataset_iam_policy __resource);
  let __resource_attributes =
    ({
       dataset_id =
         Prop.computed __resource_type __resource_id "dataset_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
