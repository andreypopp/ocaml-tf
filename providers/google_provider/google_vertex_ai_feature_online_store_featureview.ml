(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vertex_ai_feature_online_store_featureview__big_query_source = {
  entity_id_columns : string list;
      (** Columns to construct entityId / row keys. Start by supporting 1 only. *)
  uri : string;
      (** The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig. *)
}
[@@deriving yojson_of]
(** Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore. *)

type google_vertex_ai_feature_online_store_featureview__feature_registry_source__feature_groups = {
  feature_group_id : string;  (** Identifier of the feature group. *)
  feature_ids : string list;
      (** Identifiers of features under the feature group. *)
}
[@@deriving yojson_of]
(** List of features that need to be synced to Online Store. *)

type google_vertex_ai_feature_online_store_featureview__feature_registry_source = {
  feature_groups :
    google_vertex_ai_feature_online_store_featureview__feature_registry_source__feature_groups
    list;
}
[@@deriving yojson_of]
(** Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore. *)

type google_vertex_ai_feature_online_store_featureview__sync_config = {
  cron : string option; [@option]
      (** Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: CRON_TZ=${IANA_TIME_ZONE} or TZ=${IANA_TIME_ZONE}. *)
}
[@@deriving yojson_of]
(** Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving. *)

type google_vertex_ai_feature_online_store_featureview__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_online_store_featureview__timeouts *)

type google_vertex_ai_feature_online_store_featureview = {
  feature_online_store : string;
      (** The name of the FeatureOnlineStore to use for the featureview. *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs to assign to this FeatureView.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string option; [@option]
      (** Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. *)
  region : string;
      (** The region for the resource. It should be the same as the featureonlinestore region. *)
  big_query_source :
    google_vertex_ai_feature_online_store_featureview__big_query_source
    list;
  feature_registry_source :
    google_vertex_ai_feature_online_store_featureview__feature_registry_source
    list;
  sync_config :
    google_vertex_ai_feature_online_store_featureview__sync_config
    list;
  timeouts :
    google_vertex_ai_feature_online_store_featureview__timeouts
    option;
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_online_store_featureview *)

let google_vertex_ai_feature_online_store_featureview ?labels ?name
    ?timeouts ~feature_online_store ~region ~big_query_source
    ~feature_registry_source ~sync_config __resource_id =
  let __resource_type =
    "google_vertex_ai_feature_online_store_featureview"
  in
  let __resource =
    {
      feature_online_store;
      labels;
      name;
      region;
      big_query_source;
      feature_registry_source;
      sync_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_feature_online_store_featureview
       __resource);
  ()
