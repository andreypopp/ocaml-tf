(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vertex_ai_index__metadata__config__algorithm_config__brute_force_config =
  unit
[@@deriving yojson_of]

type google_vertex_ai_index__metadata__config__algorithm_config__tree_ah_config = {
  leaf_node_embedding_count : float option; [@option]
      (** Number of embeddings on each leaf node. The default value is 1000 if not set. *)
  leaf_nodes_to_search_percent : float option; [@option]
      (** The default percentage of leaf nodes that any query may be searched. Must be in
range 1-100, inclusive. The default value is 10 (means 10%) if not set. *)
}
[@@deriving yojson_of]
(** Configuration options for using the tree-AH algorithm (Shallow tree + Asymmetric Hashing).
Please refer to this paper for more details: https://arxiv.org/abs/1908.10396 *)

type google_vertex_ai_index__metadata__config__algorithm_config = {
  brute_force_config :
    google_vertex_ai_index__metadata__config__algorithm_config__brute_force_config
    list;
  tree_ah_config :
    google_vertex_ai_index__metadata__config__algorithm_config__tree_ah_config
    list;
}
[@@deriving yojson_of]
(** The configuration with regard to the algorithms used for efficient search. *)

type google_vertex_ai_index__metadata__config = {
  approximate_neighbors_count : float option; [@option]
      (** The default number of neighbors to find via approximate search before exact reordering is
performed. Exact reordering is a procedure where results returned by an
approximate search algorithm are reordered via a more expensive distance computation.
Required if tree-AH algorithm is used. *)
  dimensions : float;
      (** The number of dimensions of the input vectors. *)
  distance_measure_type : string option; [@option]
      (** The distance measure used in nearest neighbor search. The value must be one of the followings:
* SQUARED_L2_DISTANCE: Euclidean (L_2) Distance
* L1_DISTANCE: Manhattan (L_1) Distance
* COSINE_DISTANCE: Cosine Distance. Defined as 1 - cosine similarity.
* DOT_PRODUCT_DISTANCE: Dot Product Distance. Defined as a negative of the dot product *)
  feature_norm_type : string option; [@option]
      (** Type of normalization to be carried out on each vector. The value must be one of the followings:
* UNIT_L2_NORM: Unit L2 normalization type
* NONE: No normalization type is specified. *)
  shard_size : string option; [@option]
      (** Index data is split into equal parts to be processed. These are called shards.
The shard size must be specified when creating an index. The value must be one of the followings:
* SHARD_SIZE_SMALL: Small (2GB)
* SHARD_SIZE_MEDIUM: Medium (20GB)
* SHARD_SIZE_LARGE: Large (50GB) *)
  algorithm_config :
    google_vertex_ai_index__metadata__config__algorithm_config list;
}
[@@deriving yojson_of]
(** The configuration of the Matching Engine Index. *)

type google_vertex_ai_index__metadata = {
  contents_delta_uri : string;
      (** Allows inserting, updating  or deleting the contents of the Matching Engine Index.
The string must be a valid Cloud Storage directory path. If this
field is set when calling IndexService.UpdateIndex, then no other
Index field can be also updated as part of the same call.
The expected structure and format of the files this URI points to is
described at https://cloud.google.com/vertex-ai/docs/matching-engine/using-matching-engine#input-data-format *)
  is_complete_overwrite : bool option; [@option]
      (** If this field is set together with contentsDeltaUri when calling IndexService.UpdateIndex,
then existing content of the Index will be replaced by the data from the contentsDeltaUri. *)
  config : google_vertex_ai_index__metadata__config list;
}
[@@deriving yojson_of]
(** An additional information about the Index *)

type google_vertex_ai_index__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_index__timeouts *)

type google_vertex_ai_index__deployed_indexes = {
  deployed_index_id : string;  (** deployed_index_id *)
  index_endpoint : string;  (** index_endpoint *)
}
[@@deriving yojson_of]

type google_vertex_ai_index__index_stats = {
  shards_count : float;  (** shards_count *)
  vectors_count : string;  (** vectors_count *)
}
[@@deriving yojson_of]

type google_vertex_ai_index = {
  description : string option; [@option]
      (** The description of the Index. *)
  display_name : string;
      (** The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters. *)
  id : string option; [@option]  (** id *)
  index_update_method : string option; [@option]
      (** The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.
* BATCH_UPDATE: user can call indexes.patch with files on Cloud Storage of datapoints to update.
* STREAM_UPDATE: user can call indexes.upsertDatapoints/DeleteDatapoints to update the Index and the updates will be applied in corresponding DeployedIndexes in nearly real-time. *)
  labels : (string * string) list option; [@option]
      (** The labels with user-defined metadata to organize your Indexes.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]
      (** The region of the index. eg us-central1 *)
  metadata : google_vertex_ai_index__metadata list;
  timeouts : google_vertex_ai_index__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_index *)

let google_vertex_ai_index ?description ?id ?index_update_method
    ?labels ?project ?region ?timeouts ~display_name ~metadata
    __resource_id =
  let __resource_type = "google_vertex_ai_index" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_index __resource);
  ()
