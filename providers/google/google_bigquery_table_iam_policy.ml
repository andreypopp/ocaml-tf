(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_table_iam_policy = {
  dataset_id : string prop;  (** dataset_id *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  table_id : string prop;  (** table_id *)
}
[@@deriving yojson_of]
(** google_bigquery_table_iam_policy *)

let google_bigquery_table_iam_policy ?id ?project ~dataset_id
    ~policy_data ~table_id () : google_bigquery_table_iam_policy =
  { dataset_id; id; policy_data; project; table_id }

type t = {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  table_id : string prop;
}

let register ?tf_module ?id ?project ~dataset_id ~policy_data
    ~table_id __resource_id =
  let __resource_type = "google_bigquery_table_iam_policy" in
  let __resource =
    google_bigquery_table_iam_policy ?id ?project ~dataset_id
      ~policy_data ~table_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_table_iam_policy __resource);
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
       table_id =
         Prop.computed __resource_type __resource_id "table_id";
     }
      : t)
  in
  __resource_attributes
