(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_dataset_iam_policy = {
  dataset_id : string;  (** dataset_id *)
  id : string option; [@option]  (** id *)
  policy_data : string;  (** policy_data *)
  project : string option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_bigquery_dataset_iam_policy *)

let google_bigquery_dataset_iam_policy ?id ?project ~dataset_id
    ~policy_data __resource_id =
  let __resource_type = "google_bigquery_dataset_iam_policy" in
  let __resource = { dataset_id; id; policy_data; project } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_dataset_iam_policy __resource);
  ()
