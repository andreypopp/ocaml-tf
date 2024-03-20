(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_data_exchange *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_analytics_hub_data_exchange ?description
    ?documentation ?icon ?id ?primary_contact ?project ?timeouts
    ~data_exchange_id ~display_name ~location () :
    google_bigquery_analytics_hub_data_exchange =
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

let make ?description ?documentation ?icon ?id ?primary_contact
    ?project ?timeouts ~data_exchange_id ~display_name ~location __id
    =
  let __type = "google_bigquery_analytics_hub_data_exchange" in
  let __attrs =
    ({
       data_exchange_id =
         Prop.computed __type __id "data_exchange_id";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       documentation = Prop.computed __type __id "documentation";
       icon = Prop.computed __type __id "icon";
       id = Prop.computed __type __id "id";
       listing_count = Prop.computed __type __id "listing_count";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       primary_contact = Prop.computed __type __id "primary_contact";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_analytics_hub_data_exchange
        (google_bigquery_analytics_hub_data_exchange ?description
           ?documentation ?icon ?id ?primary_contact ?project
           ?timeouts ~data_exchange_id ~display_name ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?documentation ?icon ?id
    ?primary_contact ?project ?timeouts ~data_exchange_id
    ~display_name ~location __id =
  let (r : _ Tf_core.resource) =
    make ?description ?documentation ?icon ?id ?primary_contact
      ?project ?timeouts ~data_exchange_id ~display_name ~location
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
