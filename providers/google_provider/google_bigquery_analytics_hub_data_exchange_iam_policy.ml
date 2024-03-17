(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_bigquery_analytics_hub_data_exchange_iam_policy = {
  data_exchange_id : string;  (** data_exchange_id *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_data_exchange_iam_policy *)

let google_bigquery_analytics_hub_data_exchange_iam_policy
    ~data_exchange_id ~policy_data __resource_id =
  let __resource_type =
    "google_bigquery_analytics_hub_data_exchange_iam_policy"
  in
  let __resource = { data_exchange_id; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_analytics_hub_data_exchange_iam_policy
       __resource);
  ()
