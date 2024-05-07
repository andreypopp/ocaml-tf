(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type chat_engine_config__agent_creation_config = {
  business : string prop option; [@option]
  default_language_code : string prop;
  location : string prop option; [@option]
  time_zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : chat_engine_config__agent_creation_config) -> ()

let yojson_of_chat_engine_config__agent_creation_config =
  (function
   | {
       business = v_business;
       default_language_code = v_default_language_code;
       location = v_location;
       time_zone = v_time_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_language_code
         in
         ("default_language_code", arg) :: bnds
       in
       let bnds =
         match v_business with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "business", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : chat_engine_config__agent_creation_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_chat_engine_config__agent_creation_config

[@@@deriving.end]

type chat_engine_config = {
  agent_creation_config :
    chat_engine_config__agent_creation_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : chat_engine_config) -> ()

let yojson_of_chat_engine_config =
  (function
   | { agent_creation_config = v_agent_creation_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_chat_engine_config__agent_creation_config
             v_agent_creation_config
         in
         ("agent_creation_config", arg) :: bnds
       in
       `Assoc bnds
    : chat_engine_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_chat_engine_config

[@@@deriving.end]

type common_config = { company_name : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : common_config) -> ()

let yojson_of_common_config =
  (function
   | { company_name = v_company_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_company_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "company_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : common_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_common_config

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

type chat_engine_metadata = { dialogflow_agent : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : chat_engine_metadata) -> ()

let yojson_of_chat_engine_metadata =
  (function
   | { dialogflow_agent = v_dialogflow_agent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dialogflow_agent
         in
         ("dialogflow_agent", arg) :: bnds
       in
       `Assoc bnds
    : chat_engine_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_chat_engine_metadata

[@@@deriving.end]

type google_discovery_engine_chat_engine = {
  collection_id : string prop;
  data_store_ids : string prop list;
  display_name : string prop;
  engine_id : string prop;
  id : string prop option; [@option]
  industry_vertical : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  chat_engine_config : chat_engine_config list;
  common_config : common_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_discovery_engine_chat_engine) -> ()

let yojson_of_google_discovery_engine_chat_engine =
  (function
   | {
       collection_id = v_collection_id;
       data_store_ids = v_data_store_ids;
       display_name = v_display_name;
       engine_id = v_engine_id;
       id = v_id;
       industry_vertical = v_industry_vertical;
       location = v_location;
       project = v_project;
       chat_engine_config = v_chat_engine_config;
       common_config = v_common_config;
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
           yojson_of_list yojson_of_common_config v_common_config
         in
         ("common_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_chat_engine_config
             v_chat_engine_config
         in
         ("chat_engine_config", arg) :: bnds
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
         match v_industry_vertical with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "industry_vertical", arg in
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
         let arg = yojson_of_prop yojson_of_string v_engine_id in
         ("engine_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_data_store_ids
         in
         ("data_store_ids", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_collection_id in
         ("collection_id", arg) :: bnds
       in
       `Assoc bnds
    : google_discovery_engine_chat_engine ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_discovery_engine_chat_engine

[@@@deriving.end]

let chat_engine_config__agent_creation_config ?business ?location
    ~default_language_code ~time_zone () :
    chat_engine_config__agent_creation_config =
  { business; default_language_code; location; time_zone }

let chat_engine_config ~agent_creation_config () : chat_engine_config
    =
  { agent_creation_config }

let common_config ?company_name () : common_config = { company_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_discovery_engine_chat_engine ?id ?industry_vertical
    ?project ?(common_config = []) ?timeouts ~collection_id
    ~data_store_ids ~display_name ~engine_id ~location
    ~chat_engine_config () : google_discovery_engine_chat_engine =
  {
    collection_id;
    data_store_ids;
    display_name;
    engine_id;
    id;
    industry_vertical;
    location;
    project;
    chat_engine_config;
    common_config;
    timeouts;
  }

type t = {
  tf_name : string;
  chat_engine_metadata : chat_engine_metadata list prop;
  collection_id : string prop;
  create_time : string prop;
  data_store_ids : string list prop;
  display_name : string prop;
  engine_id : string prop;
  id : string prop;
  industry_vertical : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
}

let make ?id ?industry_vertical ?project ?(common_config = [])
    ?timeouts ~collection_id ~data_store_ids ~display_name ~engine_id
    ~location ~chat_engine_config __id =
  let __type = "google_discovery_engine_chat_engine" in
  let __attrs =
    ({
       tf_name = __id;
       chat_engine_metadata =
         Prop.computed __type __id "chat_engine_metadata";
       collection_id = Prop.computed __type __id "collection_id";
       create_time = Prop.computed __type __id "create_time";
       data_store_ids = Prop.computed __type __id "data_store_ids";
       display_name = Prop.computed __type __id "display_name";
       engine_id = Prop.computed __type __id "engine_id";
       id = Prop.computed __type __id "id";
       industry_vertical =
         Prop.computed __type __id "industry_vertical";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_discovery_engine_chat_engine
        (google_discovery_engine_chat_engine ?id ?industry_vertical
           ?project ~common_config ?timeouts ~collection_id
           ~data_store_ids ~display_name ~engine_id ~location
           ~chat_engine_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?industry_vertical ?project
    ?(common_config = []) ?timeouts ~collection_id ~data_store_ids
    ~display_name ~engine_id ~location ~chat_engine_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?industry_vertical ?project ~common_config ?timeouts
      ~collection_id ~data_store_ids ~display_name ~engine_id
      ~location ~chat_engine_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
