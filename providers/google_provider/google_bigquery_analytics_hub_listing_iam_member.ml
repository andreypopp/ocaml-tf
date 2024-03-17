(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_analytics_hub_listing_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_listing_iam_member__condition *)

type google_bigquery_analytics_hub_listing_iam_member = {
  data_exchange_id : string;  (** data_exchange_id *)
  id : string option; [@option]  (** id *)
  listing_id : string;  (** listing_id *)
  location : string option; [@option]  (** location *)
  member : string;  (** member *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  condition :
    google_bigquery_analytics_hub_listing_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_listing_iam_member *)

let google_bigquery_analytics_hub_listing_iam_member ?id ?location
    ?project ~data_exchange_id ~listing_id ~member ~role ~condition
    __resource_id =
  let __resource_type =
    "google_bigquery_analytics_hub_listing_iam_member"
  in
  let __resource =
    {
      data_exchange_id;
      id;
      listing_id;
      location;
      member;
      project;
      role;
      condition;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_analytics_hub_listing_iam_member
       __resource);
  ()
