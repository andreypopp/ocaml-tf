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

let google_bigquery_table_iam_binding ?id ?project ~dataset_id
    ~members ~role ~table_id ~condition __resource_id =
  let __resource_type = "google_bigquery_table_iam_binding" in
  let __resource =
    { dataset_id; id; members; project; role; table_id; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_table_iam_binding __resource);
  ()
