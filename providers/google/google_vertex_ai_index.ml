(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata__config__algorithm_config__brute_force_config = unit
[@@deriving yojson_of]

type metadata__config__algorithm_config__tree_ah_config = {
  leaf_node_embedding_count : float prop option; [@option]
      (** Number of embeddings on each leaf node. The default value is 1000 if not set. *)
  leaf_nodes_to_search_percent : float prop option; [@option]
      (** The default percentage of leaf nodes that any query may be searched. Must be in
range 1-100, inclusive. The default value is 10 (means 10%) if not set. *)
}
[@@deriving yojson_of]
(** Configuration options for using the tree-AH algorithm (Shallow tree + Asymmetric Hashing).
Please refer to this paper for more details: https://arxiv.org/abs/1908.10396 *)

type metadata__config__algorithm_config = {
  brute_force_config :
    metadata__config__algorithm_config__brute_force_config list;
  tree_ah_config :
    metadata__config__algorithm_config__tree_ah_config list;
}
[@@deriving yojson_of]
(** The configuration with regard to the algorithms used for efficient search. *)

type metadata__config = {
  approximate_neighbors_count : float prop option; [@option]
      (** The default number of neighbors to find via approximate search before exact reordering is
performed. Exact reordering is a procedure where results returned by an
approximate search algorithm are reordered via a more expensive distance computation.
Required if tree-AH algorithm is used. *)
  dimensions : float prop;
      (** The number of dimensions of the input vectors. *)
  distance_measure_type : string prop option; [@option]
      (** The distance measure used in nearest neighbor search. The value must be one of the followings:
* SQUARED_L2_DISTANCE: Euclidean (L_2) Distance
* L1_DISTANCE: Manhattan (L_1) Distance
* COSINE_DISTANCE: Cosine Distance. Defined as 1 - cosine similarity.
* DOT_PRODUCT_DISTANCE: Dot Product Distance. Defined as a negative of the dot product *)
  feature_norm_type : string prop option; [@option]
      (** Type of normalization to be carried out on each vector. The value must be one of the followings:
* UNIT_L2_NORM: Unit L2 normalization type
* NONE: No normalization type is specified. *)
  shard_size : string prop option; [@option]
      (** Index data is split into equal parts to be processed. These are called shards.
The shard size must be specified when creating an index. The value must be one of the followings:
* SHARD_SIZE_SMALL: Small (2GB)
* SHARD_SIZE_MEDIUM: Medium (20GB)
* SHARD_SIZE_LARGE: Large (50GB) *)
  algorithm_config : metadata__config__algorithm_config list;
}
[@@deriving yojson_of]
(** The configuration of the Matching Engine Index. *)

type metadata = {
  contents_delta_uri : string prop;
      (** Allows inserting, updating  or deleting the contents of the Matching Engine Index.
The string must be a valid Cloud Storage directory path. If this
field is set when calling IndexService.UpdateIndex, then no other
Index field can be also updated as part of the same call.
The expected structure and format of the files this URI points to is
described at https://cloud.google.com/vertex-ai/docs/matching-engine/using-matching-engine#input-data-format *)
  is_complete_overwrite : bool prop option; [@option]
      (** If this field is set together with contentsDeltaUri when calling IndexService.UpdateIndex,
then existing content of the Index will be replaced by the data from the contentsDeltaUri. *)
  config : metadata__config list;
}
[@@deriving yojson_of]
(** An additional information about the Index *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type deployed_indexes = {
  deployed_index_id : string prop;  (** deployed_index_id *)
  index_endpoint : string prop;  (** index_endpoint *)
}
[@@deriving yojson_of]

type index_stats = {
  shards_count : float prop;  (** shards_count *)
  vectors_count : string prop;  (** vectors_count *)
}
[@@deriving yojson_of]

type google_vertex_ai_index = {
  description : string prop option; [@option]
      (** The description of the Index. *)
  display_name : string prop;
      (** The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters. *)
  id : string prop option; [@option]  (** id *)
  index_update_method : string prop option; [@option]
      (** The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.
* BATCH_UPDATE: user can call indexes.patch with files on Cloud Storage of datapoints to update.
* STREAM_UPDATE: user can call indexes.upsertDatapoints/DeleteDatapoints to update the Index and the updates will be applied in corresponding DeployedIndexes in nearly real-time. *)
  labels : (string * string prop) list option; [@option]
      (** The labels with user-defined metadata to organize your Indexes.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the index. eg us-central1 *)
  metadata : metadata list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_index *)

let metadata__config__algorithm_config__brute_force_config () = ()

let metadata__config__algorithm_config__tree_ah_config
    ?leaf_node_embedding_count ?leaf_nodes_to_search_percent () :
    metadata__config__algorithm_config__tree_ah_config =
  { leaf_node_embedding_count; leaf_nodes_to_search_percent }

let metadata__config__algorithm_config ~brute_force_config
    ~tree_ah_config () : metadata__config__algorithm_config =
  { brute_force_config; tree_ah_config }

let metadata__config ?approximate_neighbors_count
    ?distance_measure_type ?feature_norm_type ?shard_size ~dimensions
    ~algorithm_config () : metadata__config =
  {
    approximate_neighbors_count;
    dimensions;
    distance_measure_type;
    feature_norm_type;
    shard_size;
    algorithm_config;
  }

let metadata ?is_complete_overwrite ~contents_delta_uri ~config () :
    metadata =
  { contents_delta_uri; is_complete_overwrite; config }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_index ?description ?id ?index_update_method
    ?labels ?project ?region ?timeouts ~display_name ~metadata () :
    google_vertex_ai_index =
  {
    description;
    display_name;
    id;
    index_update_method;
    labels;
    project;
    region;
    metadata;
    timeouts;
  }

type t = {
  create_time : string prop;
  deployed_indexes : deployed_indexes list prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  index_stats : index_stats list prop;
  index_update_method : string prop;
  labels : (string * string) list prop;
  metadata_schema_uri : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?index_update_method ?labels ?project
    ?region ?timeouts ~display_name ~metadata __id =
  let __type = "google_vertex_ai_index" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       deployed_indexes =
         Prop.computed __type __id "deployed_indexes";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       index_stats = Prop.computed __type __id "index_stats";
       index_update_method =
         Prop.computed __type __id "index_update_method";
       labels = Prop.computed __type __id "labels";
       metadata_schema_uri =
         Prop.computed __type __id "metadata_schema_uri";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vertex_ai_index
        (google_vertex_ai_index ?description ?id ?index_update_method
           ?labels ?project ?region ?timeouts ~display_name ~metadata
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?index_update_method ?labels
    ?project ?region ?timeouts ~display_name ~metadata __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?index_update_method ?labels ?project
      ?region ?timeouts ~display_name ~metadata __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
