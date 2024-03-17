(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_analytics_hub_listing__bigquery_dataset = {
  dataset : string;
      (** Resource name of the dataset source for this listing. e.g. projects/myproject/datasets/123 *)
}
[@@deriving yojson_of]
(** Shared dataset i.e. BigQuery dataset source. *)

type google_bigquery_analytics_hub_listing__data_provider = {
  name : string;  (** Name of the data provider. *)
  primary_contact : string option; [@option]
      (** Email or URL of the data provider. *)
}
[@@deriving yojson_of]
(** Details of the data provider who owns the source data. *)

type google_bigquery_analytics_hub_listing__publisher = {
  name : string;  (** Name of the listing publisher. *)
  primary_contact : string option; [@option]
      (** Email or URL of the listing publisher. *)
}
[@@deriving yojson_of]
(** Details of the publisher who owns the listing and who can share the source data. *)

type google_bigquery_analytics_hub_listing__restricted_export_config = {
  enabled : bool option; [@option]
      (** If true, enable restricted export. *)
  restrict_query_result : bool option; [@option]
      (** If true, restrict export of query result derived from restricted linked dataset table. *)
}
[@@deriving yojson_of]
(** If set, restricted export configuration will be propagated and enforced on the linked dataset. *)

type google_bigquery_analytics_hub_listing__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_listing__timeouts *)

type google_bigquery_analytics_hub_listing = {
  categories : string list option; [@option]
      (** Categories of the listing. Up to two categories are allowed. *)
  data_exchange_id : string;
      (** The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. *)
  description : string option; [@option]
      (** Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). *)
  display_name : string;
      (** Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces. *)
  documentation : string option; [@option]
      (** Documentation describing the listing. *)
  icon : string option; [@option]
      (** Base64 encoded image representing the listing. *)
  id : string option; [@option]  (** id *)
  listing_id : string;
      (** The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. *)
  location : string;
      (** The name of the location this data exchange listing. *)
  primary_contact : string option; [@option]
      (** Email or URL of the primary point of contact of the listing. *)
  project : string option; [@option]  (** project *)
  request_access : string option; [@option]
      (** Email or URL of the request access of the listing. Subscribers can use this reference to request access. *)
  bigquery_dataset :
    google_bigquery_analytics_hub_listing__bigquery_dataset list;
  data_provider :
    google_bigquery_analytics_hub_listing__data_provider list;
  publisher : google_bigquery_analytics_hub_listing__publisher list;
  restricted_export_config :
    google_bigquery_analytics_hub_listing__restricted_export_config
    list;
  timeouts : google_bigquery_analytics_hub_listing__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_analytics_hub_listing *)

let google_bigquery_analytics_hub_listing ?categories ?description
    ?documentation ?icon ?id ?primary_contact ?project
    ?request_access ?timeouts ~data_exchange_id ~display_name
    ~listing_id ~location ~bigquery_dataset ~data_provider ~publisher
    ~restricted_export_config __resource_id =
  let __resource_type = "google_bigquery_analytics_hub_listing" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_analytics_hub_listing __resource);
  ()
