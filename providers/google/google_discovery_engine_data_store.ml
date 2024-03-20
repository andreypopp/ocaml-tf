(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_discovery_engine_data_store = {
  content_config : string prop;
      (** The content config of the data store. Possible values: [NO_CONTENT, CONTENT_REQUIRED, PUBLIC_WEBSITE] *)
  create_advanced_site_search : bool prop option; [@option]
      (** If true, an advanced data store for site search will be created. If the
data store is not configured as site search (GENERIC vertical and
PUBLIC_WEBSITE contentConfig), this flag will be ignored. *)
  data_store_id : string prop;
      (** The unique id of the data store. *)
  display_name : string prop;
      (** The display name of the data store. This field must be a UTF-8 encoded
string with a length limit of 128 characters. *)
  id : string prop option; [@option]  (** id *)
  industry_vertical : string prop;
      (** The industry vertical that the data store registers. Possible values: [GENERIC, MEDIA] *)
  location : string prop;
      (** The geographic location where the data store should reside. The value can
only be one of global, us and eu. *)
  project : string prop option; [@option]  (** project *)
  solution_types : string prop list option; [@option]
      (** The solutions that the data store enrolls. Possible values: [SOLUTION_TYPE_RECOMMENDATION, SOLUTION_TYPE_SEARCH, SOLUTION_TYPE_CHAT] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_discovery_engine_data_store *)

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
