(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_table_iam_policy = {
  dataset_id : string;  (** dataset_id *)
  id : string option; [@option]  (** id *)
  policy_data : string;  (** policy_data *)
  project : string option; [@option]  (** project *)
  table_id : string;  (** table_id *)
}
[@@deriving yojson_of]
(** google_bigquery_table_iam_policy *)

let google_bigquery_table_iam_policy ?id ?project ~dataset_id
    ~policy_data ~table_id __resource_id =
  let __resource_type = "google_bigquery_table_iam_policy" in
  let __resource =
    { dataset_id; id; policy_data; project; table_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_table_iam_policy __resource);
  ()
