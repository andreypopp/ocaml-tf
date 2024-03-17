(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_table_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_bigquery_table_iam_binding__condition *)

type google_bigquery_table_iam_binding = {
  dataset_id : string;  (** dataset_id *)
  id : string option; [@option]  (** id *)
  members : string list;  (** members *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  table_id : string;  (** table_id *)
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
