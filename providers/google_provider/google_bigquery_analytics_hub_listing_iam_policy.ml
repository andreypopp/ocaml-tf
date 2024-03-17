(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_analytics_hub_listing_iam_policy = {
  data_exchange_id : string prop;  (** data_exchange_id *)
  id : string prop option; [@option]  (** id *)
  listing_id : string prop;  (** listing_id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_listing_iam_policy *)

let google_bigquery_analytics_hub_listing_iam_policy ?id ?location
    ?project ~data_exchange_id ~listing_id ~policy_data __resource_id
    =
  let __resource_type =
    "google_bigquery_analytics_hub_listing_iam_policy"
  in
  let __resource =
    {
      data_exchange_id;
      id;
      listing_id;
      location;
      policy_data;
      project;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_analytics_hub_listing_iam_policy
       __resource);
  ()
