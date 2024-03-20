(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bigquery_dataset = {
  dataset : string prop;
      (** Resource name of the dataset source for this listing. e.g. projects/myproject/datasets/123 *)
}
[@@deriving yojson_of]
(** Shared dataset i.e. BigQuery dataset source. *)

type data_provider = {
  name : string prop;  (** Name of the data provider. *)
  primary_contact : string prop option; [@option]
      (** Email or URL of the data provider. *)
}
[@@deriving yojson_of]
(** Details of the data provider who owns the source data. *)

type publisher = {
  name : string prop;  (** Name of the listing publisher. *)
  primary_contact : string prop option; [@option]
      (** Email or URL of the listing publisher. *)
}
[@@deriving yojson_of]
(** Details of the publisher who owns the listing and who can share the source data. *)

type restricted_export_config = {
  enabled : bool prop option; [@option]
      (** If true, enable restricted export. *)
  restrict_query_result : bool prop option; [@option]
      (** If true, restrict export of query result derived from restricted linked dataset table. *)
}
[@@deriving yojson_of]
(** If set, restricted export configuration will be propagated and enforced on the linked dataset. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_bigquery_analytics_hub_listing = {
  categories : string prop list option; [@option]
      (** Categories of the listing. Up to two categories are allowed. *)
  data_exchange_id : string prop;
      (** The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. *)
  description : string prop option; [@option]
      (** Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). *)
  display_name : string prop;
      (** Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces. *)
  documentation : string prop option; [@option]
      (** Documentation describing the listing. *)
  icon : string prop option; [@option]
      (** Base64 encoded image representing the listing. *)
  id : string prop option; [@option]  (** id *)
  listing_id : string prop;
      (** The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. *)
  location : string prop;
      (** The name of the location this data exchange listing. *)
  primary_contact : string prop option; [@option]
      (** Email or URL of the primary point of contact of the listing. *)
  project : string prop option; [@option]  (** project *)
  request_access : string prop option; [@option]
      (** Email or URL of the request access of the listing. Subscribers can use this reference to request access. *)
  bigquery_dataset : bigquery_dataset list;
  data_provider : data_provider list;
  publisher : publisher list;
  restricted_export_config : restricted_export_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_listing *)

let bigquery_dataset ~dataset () : bigquery_dataset = { dataset }

let data_provider ?primary_contact ~name () : data_provider =
  { name; primary_contact }

let publisher ?primary_contact ~name () : publisher =
  { name; primary_contact }

let restricted_export_config ?enabled ?restrict_query_result () :
    restricted_export_config =
  { enabled; restrict_query_result }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_analytics_hub_listing ?categories ?description
    ?documentation ?icon ?id ?primary_contact ?project
    ?request_access ?timeouts ~data_exchange_id ~display_name
    ~listing_id ~location ~bigquery_dataset ~data_provider ~publisher
    ~restricted_export_config () :
    google_bigquery_analytics_hub_listing =
  {
    categories;
    data_exchange_id;
    description;
    display_name;
    documentation;
    icon;
    id;
    listing_id;
    location;
    primary_contact;
    project;
    request_access;
    bigquery_dataset;
    data_provider;
    publisher;
    restricted_export_config;
    timeouts;
  }

type t = {
  categories : string list prop;
  data_exchange_id : string prop;
  description : string prop;
  display_name : string prop;
  documentation : string prop;
  icon : string prop;
  id : string prop;
  listing_id : string prop;
  location : string prop;
  name : string prop;
  primary_contact : string prop;
  project : string prop;
  request_access : string prop;
}

let make ?categories ?description ?documentation ?icon ?id
    ?primary_contact ?project ?request_access ?timeouts
    ~data_exchange_id ~display_name ~listing_id ~location
    ~bigquery_dataset ~data_provider ~publisher
    ~restricted_export_config __id =
  let __type = "google_bigquery_analytics_hub_listing" in
  let __attrs =
    ({
       categories = Prop.computed __type __id "categories";
       data_exchange_id =
         Prop.computed __type __id "data_exchange_id";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       documentation = Prop.computed __type __id "documentation";
       icon = Prop.computed __type __id "icon";
       id = Prop.computed __type __id "id";
       listing_id = Prop.computed __type __id "listing_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       primary_contact = Prop.computed __type __id "primary_contact";
       project = Prop.computed __type __id "project";
       request_access = Prop.computed __type __id "request_access";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_analytics_hub_listing
        (google_bigquery_analytics_hub_listing ?categories
           ?description ?documentation ?icon ?id ?primary_contact
           ?project ?request_access ?timeouts ~data_exchange_id
           ~display_name ~listing_id ~location ~bigquery_dataset
           ~data_provider ~publisher ~restricted_export_config ());
    attrs = __attrs;
  }

let register ?tf_module ?categories ?description ?documentation ?icon
    ?id ?primary_contact ?project ?request_access ?timeouts
    ~data_exchange_id ~display_name ~listing_id ~location
    ~bigquery_dataset ~data_provider ~publisher
    ~restricted_export_config __id =
  let (r : _ Tf_core.resource) =
    make ?categories ?description ?documentation ?icon ?id
      ?primary_contact ?project ?request_access ?timeouts
      ~data_exchange_id ~display_name ~listing_id ~location
      ~bigquery_dataset ~data_provider ~publisher
      ~restricted_export_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
