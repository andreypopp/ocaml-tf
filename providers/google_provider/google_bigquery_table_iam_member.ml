(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_bigquery_table_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_bigquery_table_iam_member__condition *)

type google_bigquery_table_iam_member = {
  dataset_id : string;  (** dataset_id *)
  member : string;  (** member *)
  role : string;  (** role *)
  table_id : string;  (** table_id *)
  condition : google_bigquery_table_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_bigquery_table_iam_member *)

let google_bigquery_table_iam_member ~dataset_id ~member ~role
    ~table_id ~condition __resource_id =
  let __resource_type = "google_bigquery_table_iam_member" in
  let __resource =
    { dataset_id; member; role; table_id; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_table_iam_member __resource);
  ()
