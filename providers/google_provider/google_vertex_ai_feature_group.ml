(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_vertex_ai_feature_group__big_query__big_query_source = {
  input_uri : string;
      (** BigQuery URI to a table, up to 2000 characters long. For example: 'bq://projectId.bqDatasetId.bqTableId.' *)
}
[@@deriving yojson_of]
(** The BigQuery source URI that points to either a BigQuery Table or View. *)

type google_vertex_ai_feature_group__big_query = {
  entity_id_columns : string list option; [@option]
      (** Columns to construct entityId / row keys. Currently only supports 1 entity_id_column. If not provided defaults to entityId. *)
  big_query_source :
    google_vertex_ai_feature_group__big_query__big_query_source list;
}
[@@deriving yojson_of]
(** Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a feature_timestamp column in the source. *)

type google_vertex_ai_feature_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_group__timeouts *)

type google_vertex_ai_feature_group = {
  description : string option; [@option]
      (** The description of the FeatureGroup. *)
  labels : (string * string) list option; [@option]
      (** The labels with user-defined metadata to organize your FeatureGroup.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string option; [@option]
      (** The resource name of the Feature Group. *)
  region : string option; [@option]
      (** The region of feature group. eg us-central1 *)
  big_query : google_vertex_ai_feature_group__big_query list;
  timeouts : google_vertex_ai_feature_group__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_group *)

let google_vertex_ai_feature_group ?description ?labels ?name ?region
    ?timeouts ~big_query __resource_id =
  let __resource_type = "google_vertex_ai_feature_group" in
  let __resource =
    { description; labels; name; region; big_query; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_feature_group __resource);
  ()
