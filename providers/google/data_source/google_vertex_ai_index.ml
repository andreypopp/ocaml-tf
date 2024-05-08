(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type deployed_indexes = {
  deployed_index_id: string prop; 
  index_endpoint: string prop; 
} [@@deriving_inline yojson_of]
let _ = fun (_ : deployed_indexes) -> ()
let yojson_of_deployed_indexes =
  (function
   | { deployed_index_id = v_deployed_index_id;
       index_endpoint = v_index_endpoint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index_endpoint in
         ("index_endpoint", arg) :: bnds in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_deployed_index_id in
         ("deployed_index_id", arg) :: bnds in
       `Assoc bnds : deployed_indexes -> Ppx_yojson_conv_lib.Yojson.Safe.t)
let _ = yojson_of_deployed_indexes
[@@@deriving.end]
type index_stats = {
  shards_count: float prop; 
  vectors_count: string prop; 
} [@@deriving_inline yojson_of]
let _ = fun (_ : index_stats) -> ()
let yojson_of_index_stats =
  (function
   | { shards_count = v_shards_count; vectors_count = v_vectors_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vectors_count in
         ("vectors_count", arg) :: bnds in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_shards_count in
         ("shards_count", arg) :: bnds in
       `Assoc bnds : index_stats -> Ppx_yojson_conv_lib.Yojson.Safe.t)
let _ = yojson_of_index_stats
[@@@deriving.end]
type metadata__config__algorithm_config__tree_ah_config = {
  leaf_node_embedding_count: float prop; 
  leaf_nodes_to_search_percent: float prop; 
} [@@deriving_inline yojson_of]
let _ = fun (_ : metadata__config__algorithm_config__tree_ah_config) -> ()
let yojson_of_metadata__config__algorithm_config__tree_ah_config =
  (function
   | { leaf_node_embedding_count = v_leaf_node_embedding_count;
       leaf_nodes_to_search_percent = v_leaf_nodes_to_search_percent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_leaf_nodes_to_search_percent in
         ("leaf_nodes_to_search_percent", arg) :: bnds in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_leaf_node_embedding_count in
         ("leaf_node_embedding_count", arg) :: bnds in
       `Assoc bnds : metadata__config__algorithm_config__tree_ah_config ->
                       Ppx_yojson_conv_lib.Yojson.Safe.t)
let _ = yojson_of_metadata__config__algorithm_config__tree_ah_config
[@@@deriving.end]
type metadata__config__algorithm_config__brute_force_config = unit [@@deriving_inline yojson_of]
let _ =
  fun (_ : metadata__config__algorithm_config__brute_force_config) -> ()
let yojson_of_metadata__config__algorithm_config__brute_force_config =
  (yojson_of_unit : metadata__config__algorithm_config__brute_force_config ->
                      Ppx_yojson_conv_lib.Yojson.Safe.t)
let _ = yojson_of_metadata__config__algorithm_config__brute_force_config
[@@@deriving.end]
type metadata__config__algorithm_config = {
  brute_force_config: metadata__config__algorithm_config__brute_force_config list; [@default []] [@yojson_drop_default ( = )]
  tree_ah_config: metadata__config__algorithm_config__tree_ah_config list; [@default []] [@yojson_drop_default ( = )]
} [@@deriving_inline yojson_of]
let _ = fun (_ : metadata__config__algorithm_config) -> ()
let yojson_of_metadata__config__algorithm_config =
  (function
   | { brute_force_config = v_brute_force_config;
       tree_ah_config = v_tree_ah_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
       let bnds =
         if [] = v_tree_ah_config
         then bnds
         else
           (let arg =
              (yojson_of_list
                 yojson_of_metadata__config__algorithm_config__tree_ah_config)
                v_tree_ah_config in
            let bnd = ("tree_ah_config", arg) in bnd :: bnds) in
       let bnds =
         if [] = v_brute_force_config
         then bnds
         else
           (let arg =
              (yojson_of_list
                 yojson_of_metadata__config__algorithm_config__brute_force_config)
                v_brute_force_config in
            let bnd = ("brute_force_config", arg) in bnd :: bnds) in
       `Assoc bnds : metadata__config__algorithm_config ->
                       Ppx_yojson_conv_lib.Yojson.Safe.t)
let _ = yojson_of_metadata__config__algorithm_config
[@@@deriving.end]
type metadata__config = {
  algorithm_config: metadata__config__algorithm_config list; [@default []] [@yojson_drop_default ( = )]
  approximate_neighbors_count: float prop; 
  dimensions: float prop; 
  distance_measure_type: string prop; 
  feature_norm_type: string prop; 
  shard_size: string prop; 
} [@@deriving_inline yojson_of]
let _ = fun (_ : metadata__config) -> ()
let yojson_of_metadata__config =
  (function
   | { algorithm_config = v_algorithm_config;
       approximate_neighbors_count = v_approximate_neighbors_count;
       dimensions = v_dimensions;
       distance_measure_type = v_distance_measure_type;
       feature_norm_type = v_feature_norm_type; shard_size = v_shard_size }
       ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_shard_size in
         ("shard_size", arg) :: bnds in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_feature_norm_type in
         ("feature_norm_type", arg) :: bnds in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_distance_measure_type in
         ("distance_measure_type", arg) :: bnds in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_dimensions in
         ("dimensions", arg) :: bnds in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_approximate_neighbors_count in
         ("approximate_neighbors_count", arg) :: bnds in
       let bnds =
         if [] = v_algorithm_config
         then bnds
         else
           (let arg =
              (yojson_of_list yojson_of_metadata__config__algorithm_config)
                v_algorithm_config in
            let bnd = ("algorithm_config", arg) in bnd :: bnds) in
       `Assoc bnds : metadata__config -> Ppx_yojson_conv_lib.Yojson.Safe.t)
let _ = yojson_of_metadata__config
[@@@deriving.end]
type metadata = {
  config: metadata__config list; [@default []] [@yojson_drop_default ( = )]
  contents_delta_uri: string prop; 
  is_complete_overwrite: bool prop; 
} [@@deriving_inline yojson_of]
let _ = fun (_ : metadata) -> ()
let yojson_of_metadata =
  (function
   | { config = v_config; contents_delta_uri = v_contents_delta_uri;
       is_complete_overwrite = v_is_complete_overwrite } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_complete_overwrite in
         ("is_complete_overwrite", arg) :: bnds in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_contents_delta_uri in
         ("contents_delta_uri", arg) :: bnds in
       let bnds =
         if [] = v_config
         then bnds
         else
           (let arg = (yojson_of_list yojson_of_metadata__config) v_config in
            let bnd = ("config", arg) in bnd :: bnds) in
       `Assoc bnds : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)
let _ = yojson_of_metadata
[@@@deriving.end]
type google_vertex_ai_index = {
  id: string  prop option; [@option]
  name: string prop; 
  project: string  prop option; [@option]
  region: string prop; 
} [@@deriving_inline yojson_of]
let _ = fun (_ : google_vertex_ai_index) -> ()
let yojson_of_google_vertex_ai_index =
  (function
   | { id = v_id; name = v_name; project = v_project; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = ("project", arg) in bnd :: bnds in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in ("name", arg) ::
           bnds in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = ("id", arg) in bnd :: bnds in
       `Assoc bnds : google_vertex_ai_index ->
                       Ppx_yojson_conv_lib.Yojson.Safe.t)
let _ = yojson_of_google_vertex_ai_index
[@@@deriving.end]

let google_vertex_ai_index ?id ?project ~name ~region () =
  ({
    id;
    name;
    project;
    region;
  } : google_vertex_ai_index);;

type t = {
  tf_name: string;
  create_time: string prop;
  deployed_indexes: deployed_indexes list prop;
  description: string prop;
  display_name: string prop;
  effective_labels: (string * string) list prop;
  etag: string prop;
  id: string prop;
  index_stats: index_stats list prop;
  index_update_method: string prop;
  labels: (string * string) list prop;
  metadata: metadata list prop;
  metadata_schema_uri: string prop;
  name: string prop;
  project: string prop;
  region: string prop;
  terraform_labels: (string * string) list prop;
  update_time: string prop;
}

let make ?id ?project ~name ~region __id =
  let __type = "google_vertex_ai_index" in
  let __attrs = ({
    tf_name = __id;
    create_time = Prop.computed __type __id "create_time";
    deployed_indexes = Prop.computed __type __id "deployed_indexes";
    description = Prop.computed __type __id "description";
    display_name = Prop.computed __type __id "display_name";
    effective_labels = Prop.computed __type __id "effective_labels";
    etag = Prop.computed __type __id "etag";
    id = Prop.computed __type __id "id";
    index_stats = Prop.computed __type __id "index_stats";
    index_update_method = Prop.computed __type __id "index_update_method";
    labels = Prop.computed __type __id "labels";
    metadata = Prop.computed __type __id "metadata";
    metadata_schema_uri = Prop.computed __type __id "metadata_schema_uri";
    name = Prop.computed __type __id "name";
    project = Prop.computed __type __id "project";
    region = Prop.computed __type __id "region";
    terraform_labels = Prop.computed __type __id "terraform_labels";
    update_time = Prop.computed __type __id "update_time";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_google_vertex_ai_index (google_vertex_ai_index ?id ?project ~name ~region ());
    attrs=__attrs;
  };;

let register ?tf_module ?id ?project ~name ~region __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name ~region __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

