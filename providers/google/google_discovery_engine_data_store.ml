(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_discovery_engine_data_store = {
  content_config : string prop;
  create_advanced_site_search : bool prop option; [@option]
  data_store_id : string prop;
  display_name : string prop;
  id : string prop option; [@option]
  industry_vertical : string prop;
  location : string prop;
  project : string prop option; [@option]
  solution_types : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_discovery_engine_data_store) -> ()

let yojson_of_google_discovery_engine_data_store =
  (function
   | {
       content_config = v_content_config;
       create_advanced_site_search = v_create_advanced_site_search;
       data_store_id = v_data_store_id;
       display_name = v_display_name;
       id = v_id;
       industry_vertical = v_industry_vertical;
       location = v_location;
       project = v_project;
       solution_types = v_solution_types;
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
         match v_solution_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "solution_types", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_industry_vertical
         in
         ("industry_vertical", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_store_id in
         ("data_store_id", arg) :: bnds
       in
       let bnds =
         match v_create_advanced_site_search with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_advanced_site_search", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_content_config
         in
         ("content_config", arg) :: bnds
       in
       `Assoc bnds
    : google_discovery_engine_data_store ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_discovery_engine_data_store

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_discovery_engine_data_store ?create_advanced_site_search
    ?id ?project ?solution_types ?timeouts ~content_config
    ~data_store_id ~display_name ~industry_vertical ~location () :
    google_discovery_engine_data_store =
  {
    content_config;
    create_advanced_site_search;
    data_store_id;
    display_name;
    id;
    industry_vertical;
    location;
    project;
    solution_types;
    timeouts;
  }

type t = {
  tf_name : string;
  content_config : string prop;
  create_advanced_site_search : bool prop;
  create_time : string prop;
  data_store_id : string prop;
  default_schema_id : string prop;
  display_name : string prop;
  id : string prop;
  industry_vertical : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  solution_types : string list prop;
}

let make ?create_advanced_site_search ?id ?project ?solution_types
    ?timeouts ~content_config ~data_store_id ~display_name
    ~industry_vertical ~location __id =
  let __type = "google_discovery_engine_data_store" in
  let __attrs =
    ({
       tf_name = __id;
       content_config = Prop.computed __type __id "content_config";
       create_advanced_site_search =
         Prop.computed __type __id "create_advanced_site_search";
       create_time = Prop.computed __type __id "create_time";
       data_store_id = Prop.computed __type __id "data_store_id";
       default_schema_id =
         Prop.computed __type __id "default_schema_id";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       industry_vertical =
         Prop.computed __type __id "industry_vertical";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       solution_types = Prop.computed __type __id "solution_types";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_discovery_engine_data_store
        (google_discovery_engine_data_store
           ?create_advanced_site_search ?id ?project ?solution_types
           ?timeouts ~content_config ~data_store_id ~display_name
           ~industry_vertical ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?create_advanced_site_search ?id ?project
    ?solution_types ?timeouts ~content_config ~data_store_id
    ~display_name ~industry_vertical ~location __id =
  let (r : _ Tf_core.resource) =
    make ?create_advanced_site_search ?id ?project ?solution_types
      ?timeouts ~content_config ~data_store_id ~display_name
      ~industry_vertical ~location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
