(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type big_query__big_query_source = {
  input_uri : string prop;
      (** BigQuery URI to a table, up to 2000 characters long. For example: 'bq://projectId.bqDatasetId.bqTableId.' *)
}
[@@deriving yojson_of]
(** The BigQuery source URI that points to either a BigQuery Table or View. *)

type big_query = {
  entity_id_columns : string prop list option; [@option]
      (** Columns to construct entityId / row keys. Currently only supports 1 entity_id_column. If not provided defaults to entityId. *)
  big_query_source : big_query__big_query_source list;
}
[@@deriving yojson_of]
(** Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a feature_timestamp column in the source. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_vertex_ai_feature_group = {
  description : string prop option; [@option]
      (** The description of the FeatureGroup. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** The labels with user-defined metadata to organize your FeatureGroup.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop option; [@option]
      (** The resource name of the Feature Group. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of feature group. eg us-central1 *)
  big_query : big_query list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_feature_group *)

let big_query__big_query_source ~input_uri () :
    big_query__big_query_source =
  { input_uri }

let big_query ?entity_id_columns ~big_query_source () : big_query =
  { entity_id_columns; big_query_source }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_feature_group ?description ?id ?labels ?name
    ?project ?region ?timeouts ~big_query () :
    google_vertex_ai_feature_group =
  {
    description;
    id;
    labels;
    name;
    project;
    region;
    big_query;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let register ?tf_module ?description ?id ?labels ?name ?project
    ?region ?timeouts ~big_query __resource_id =
  let __resource_type = "google_vertex_ai_feature_group" in
  let __resource =
    google_vertex_ai_feature_group ?description ?id ?labels ?name
      ?project ?region ?timeouts ~big_query ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_feature_group __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       etag = Prop.computed __resource_type __resource_id "etag";
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
