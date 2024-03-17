(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_table_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_bigquery_table_iam_binding__condition *)

type google_bigquery_table_iam_binding = {
  dataset_id : string prop;  (** dataset_id *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  table_id : string prop;  (** table_id *)
  condition : google_bigquery_table_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_bigquery_table_iam_binding *)

type t = {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  table_id : string prop;
}

let google_bigquery_table_iam_binding ?id ?project ~dataset_id
    ~members ~role ~table_id ~condition __resource_id =
  let __resource_type = "google_bigquery_table_iam_binding" in
  let __resource =
    ({ dataset_id; id; members; project; role; table_id; condition }
      : google_bigquery_table_iam_binding)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_table_iam_binding __resource);
  let __resource_attributes =
    ({
       dataset_id =
         Prop.computed __resource_type __resource_id "dataset_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       table_id =
         Prop.computed __resource_type __resource_id "table_id";
     }
      : t)
  in
  __resource_attributes
