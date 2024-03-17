(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_analytics_hub_data_exchange__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_data_exchange__timeouts *)

type google_bigquery_analytics_hub_data_exchange = {
  data_exchange_id : string;
      (** The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. *)
  description : string option; [@option]
      (** Description of the data exchange. *)
  display_name : string;
      (** Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and must not start or end with spaces. *)
  documentation : string option; [@option]
      (** Documentation describing the data exchange. *)
  icon : string option; [@option]
      (** Base64 encoded image representing the data exchange. *)
  id : string option; [@option]  (** id *)
  location : string;
      (** The name of the location this data exchange. *)
  primary_contact : string option; [@option]
      (** Email or URL of the primary point of contact of the data exchange. *)
  project : string option; [@option]  (** project *)
  timeouts :
    google_bigquery_analytics_hub_data_exchange__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_data_exchange *)

let google_bigquery_analytics_hub_data_exchange ?description
    ?documentation ?icon ?id ?primary_contact ?project ?timeouts
    ~data_exchange_id ~display_name ~location __resource_id =
  let __resource_type =
    "google_bigquery_analytics_hub_data_exchange"
  in
  let __resource =
    {
      data_exchange_id;
      description;
      display_name;
      documentation;
      icon;
      id;
      location;
      primary_contact;
      project;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_analytics_hub_data_exchange __resource);
  ()
