(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type big_query_source = {
  entity_id_columns : string prop list;
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : big_query_source) -> ()

let yojson_of_big_query_source =
  (function
   | { entity_id_columns = v_entity_id_columns; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_entity_id_columns
         in
         ("entity_id_columns", arg) :: bnds
       in
       `Assoc bnds
    : big_query_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_big_query_source

[@@@deriving.end]

type feature_registry_source__feature_groups = {
  feature_group_id : string prop;
  feature_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : feature_registry_source__feature_groups) -> ()

let yojson_of_feature_registry_source__feature_groups =
  (function
   | {
       feature_group_id = v_feature_group_id;
       feature_ids = v_feature_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_feature_ids
         in
         ("feature_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_feature_group_id
         in
         ("feature_group_id", arg) :: bnds
       in
       `Assoc bnds
    : feature_registry_source__feature_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_feature_registry_source__feature_groups

[@@@deriving.end]

type feature_registry_source = {
  feature_groups : feature_registry_source__feature_groups list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : feature_registry_source) -> ()

let yojson_of_feature_registry_source =
  (function
   | { feature_groups = v_feature_groups } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_feature_registry_source__feature_groups
             v_feature_groups
         in
         ("feature_groups", arg) :: bnds
       in
       `Assoc bnds
    : feature_registry_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_feature_registry_source

[@@@deriving.end]

type sync_config = { cron : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : sync_config) -> ()

let yojson_of_sync_config =
  (function
   | { cron = v_cron } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cron with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cron", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sync_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sync_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_vertex_ai_feature_online_store_featureview = {
  feature_online_store : string prop;
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop;
  big_query_source : big_query_source list;
  feature_registry_source : feature_registry_source list;
  sync_config : sync_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_vertex_ai_feature_online_store_featureview) -> ()

let yojson_of_google_vertex_ai_feature_online_store_featureview =
  (function
   | {
       feature_online_store = v_feature_online_store;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       region = v_region;
       big_query_source = v_big_query_source;
       feature_registry_source = v_feature_registry_source;
       sync_config = v_sync_config;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sync_config v_sync_config
         in
         ("sync_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_feature_registry_source
             v_feature_registry_source
         in
         ("feature_registry_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_big_query_source
             v_big_query_source
         in
         ("big_query_source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_feature_online_store
         in
         ("feature_online_store", arg) :: bnds
       in
       `Assoc bnds
    : google_vertex_ai_feature_online_store_featureview ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vertex_ai_feature_online_store_featureview

[@@@deriving.end]

let big_query_source ~entity_id_columns ~uri () : big_query_source =
  { entity_id_columns; uri }

let feature_registry_source__feature_groups ~feature_group_id
    ~feature_ids () : feature_registry_source__feature_groups =
  { feature_group_id; feature_ids }

let feature_registry_source ~feature_groups () :
    feature_registry_source =
  { feature_groups }

let sync_config ?cron () : sync_config = { cron }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_feature_online_store_featureview ?id ?labels
    ?name ?project ?(big_query_source = [])
    ?(feature_registry_source = []) ?(sync_config = []) ?timeouts
    ~feature_online_store ~region () :
    google_vertex_ai_feature_online_store_featureview =
  {
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

let make ?id ?labels ?name ?project ?(big_query_source = [])
    ?(feature_registry_source = []) ?(sync_config = []) ?timeouts
    ~feature_online_store ~region __id =
  let __type = "google_vertex_ai_feature_online_store_featureview" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       feature_online_store =
         Prop.computed __type __id "feature_online_store";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
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
      yojson_of_google_vertex_ai_feature_online_store_featureview
        (google_vertex_ai_feature_online_store_featureview ?id
           ?labels ?name ?project ~big_query_source
           ~feature_registry_source ~sync_config ?timeouts
           ~feature_online_store ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?name ?project
    ?(big_query_source = []) ?(feature_registry_source = [])
    ?(sync_config = []) ?timeouts ~feature_online_store ~region __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?name ?project ~big_query_source
      ~feature_registry_source ~sync_config ?timeouts
      ~feature_online_store ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
