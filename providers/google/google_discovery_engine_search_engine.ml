(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type common_config = {
  company_name : string prop option; [@option]
      (** The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.cd *)
}
[@@deriving yojson_of]
(** Common config spec that specifies the metadata of the engine. *)

type search_engine_config = {
  search_add_ons : string prop list option; [@option]
      (** The add-on that this search engine enables. Possible values: [SEARCH_ADD_ON_LLM] *)
  search_tier : string prop option; [@option]
      (** The search feature tier of this engine. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified. Default value: SEARCH_TIER_STANDARD Possible values: [SEARCH_TIER_STANDARD, SEARCH_TIER_ENTERPRISE] *)
}
[@@deriving yojson_of]
(** Configurations for a Search Engine. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_discovery_engine_search_engine = {
  collection_id : string prop;  (** The collection ID. *)
  data_store_ids : string prop list;
      (** The data stores associated with this engine. For SOLUTION_TYPE_SEARCH type of engines, they can only associate with at most one data store. *)
  display_name : string prop;
      (** Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters. *)
  engine_id : string prop;
      (** Unique ID to use for Search Engine App. *)
  id : string prop option; [@option]  (** id *)
  industry_vertical : string prop option; [@option]
      (** The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine. Default value: GENERIC Possible values: [GENERIC, MEDIA] *)
  location : string prop;  (** Location. *)
  project : string prop option; [@option]  (** project *)
  common_config : common_config list;
  search_engine_config : search_engine_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_discovery_engine_search_engine *)

let common_config ?company_name () : common_config = { company_name }

let search_engine_config ?search_add_ons ?search_tier () :
    search_engine_config =
  { search_add_ons; search_tier }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_discovery_engine_search_engine ?id ?industry_vertical
    ?project ?timeouts ~collection_id ~data_store_ids ~display_name
    ~engine_id ~location ~common_config ~search_engine_config () :
    google_discovery_engine_search_engine =
  {
    collection_id;
    data_store_ids;
    display_name;
    engine_id;
    id;
    industry_vertical;
    location;
    project;
    common_config;
    search_engine_config;
    timeouts;
  }

type t = {
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

let make ?id ?industry_vertical ?project ?timeouts ~collection_id
    ~data_store_ids ~display_name ~engine_id ~location ~common_config
    ~search_engine_config __id =
  let __type = "google_discovery_engine_search_engine" in
  let __attrs =
    ({
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
      yojson_of_google_discovery_engine_search_engine
        (google_discovery_engine_search_engine ?id ?industry_vertical
           ?project ?timeouts ~collection_id ~data_store_ids
           ~display_name ~engine_id ~location ~common_config
           ~search_engine_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?industry_vertical ?project ?timeouts
    ~collection_id ~data_store_ids ~display_name ~engine_id ~location
    ~common_config ~search_engine_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?industry_vertical ?project ?timeouts ~collection_id
      ~data_store_ids ~display_name ~engine_id ~location
      ~common_config ~search_engine_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
