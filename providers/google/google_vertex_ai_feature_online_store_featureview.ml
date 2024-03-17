(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vertex_ai_feature_online_store_featureview__big_query_source = {
  entity_id_columns : string prop list;
      (** Columns to construct entityId / row keys. Start by supporting 1 only. *)
  uri : string prop;
      (** The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig. *)
}
[@@deriving yojson_of]
(** Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore. *)

type google_vertex_ai_feature_online_store_featureview__feature_registry_source__feature_groups = {
  feature_group_id : string prop;
      (** Identifier of the feature group. *)
  feature_ids : string prop list;
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
  cron : string prop option; [@option]
      (** Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: CRON_TZ=${IANA_TIME_ZONE} or TZ=${IANA_TIME_ZONE}. *)
}
[@@deriving yojson_of]
(** Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving. *)

type google_vertex_ai_feature_online_store_featureview__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_online_store_featureview__timeouts *)

type google_vertex_ai_feature_online_store_featureview = {
  feature_online_store : string prop;
      (** The name of the FeatureOnlineStore to use for the featureview. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** A set of key/value label pairs to assign to this FeatureView.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop option; [@option]
      (** Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. *)
  project : string prop option; [@option]  (** project *)
  region : string prop;
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

type t = {
  create_time : string prop;
  effective_labels : (string * string) list prop;
  feature_online_store : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let google_vertex_ai_feature_online_store_featureview ?id ?labels
    ?name ?project ?timeouts ~feature_online_store ~region
    ~big_query_source ~feature_registry_source ~sync_config
    __resource_id =
  let __resource_type =
    "google_vertex_ai_feature_online_store_featureview"
  in
  let __resource =
    ({
       feature_online_store;
       id;
       labels;
       name;
       project;
       region;
       big_query_source;
       feature_registry_source;
       sync_config;
       timeouts;
     }
      : google_vertex_ai_feature_online_store_featureview)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_feature_online_store_featureview
       __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       feature_online_store =
         Prop.computed __resource_type __resource_id
           "feature_online_store";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
