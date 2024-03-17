(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_analytics_hub_data_exchange__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_data_exchange__timeouts *)

type google_bigquery_analytics_hub_data_exchange = {
  data_exchange_id : string prop;
      (** The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. *)
  description : string prop option; [@option]
      (** Description of the data exchange. *)
  display_name : string prop;
      (** Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and must not start or end with spaces. *)
  documentation : string prop option; [@option]
      (** Documentation describing the data exchange. *)
  icon : string prop option; [@option]
      (** Base64 encoded image representing the data exchange. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The name of the location this data exchange. *)
  primary_contact : string prop option; [@option]
      (** Email or URL of the primary point of contact of the data exchange. *)
  project : string prop option; [@option]  (** project *)
  timeouts :
    google_bigquery_analytics_hub_data_exchange__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_data_exchange *)

type t = {
  data_exchange_id : string prop;
  description : string prop;
  display_name : string prop;
  documentation : string prop;
  icon : string prop;
  id : string prop;
  listing_count : float prop;
  location : string prop;
  name : string prop;
  primary_contact : string prop;
  project : string prop;
}

let google_bigquery_analytics_hub_data_exchange ?description
    ?documentation ?icon ?id ?primary_contact ?project ?timeouts
    ~data_exchange_id ~display_name ~location __resource_id =
  let __resource_type =
    "google_bigquery_analytics_hub_data_exchange"
  in
  let __resource =
    ({
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
      : google_bigquery_analytics_hub_data_exchange)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_analytics_hub_data_exchange __resource);
  let __resource_attributes =
    ({
       data_exchange_id =
         Prop.computed __resource_type __resource_id
           "data_exchange_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       documentation =
         Prop.computed __resource_type __resource_id "documentation";
       icon = Prop.computed __resource_type __resource_id "icon";
       id = Prop.computed __resource_type __resource_id "id";
       listing_count =
         Prop.computed __resource_type __resource_id "listing_count";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       primary_contact =
         Prop.computed __resource_type __resource_id
           "primary_contact";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
