(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type chat_engine_config__agent_creation_config = {
  business : string prop option; [@option]
      (** Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search. *)
  default_language_code : string prop;
      (** The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes. *)
  location : string prop option; [@option]
      (** Agent location for Agent creation, currently supported values: global/us/eu, it needs to be the same region as the Chat Engine. *)
  time_zone : string prop;
      (** The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. *)
}
[@@deriving yojson_of]
(** The configuration to generate the Dialogflow agent that is associated to this Engine. *)

type chat_engine_config = {
  agent_creation_config :
    chat_engine_config__agent_creation_config list;
}
[@@deriving yojson_of]
(** Configurations for a chat Engine. *)

type common_config = {
  company_name : string prop option; [@option]
      (** The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features. *)
}
[@@deriving yojson_of]
(** Common config spec that specifies the metadata of the engine. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type chat_engine_metadata = {
  dialogflow_agent : string prop;  (** dialogflow_agent *)
}
[@@deriving yojson_of]

type google_discovery_engine_chat_engine = {
  collection_id : string prop;  (** The collection ID. *)
  data_store_ids : string prop list;
      (** The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be 'SOLUTION_TYPE_CHAT'. Adding or removing data stores will force recreation. *)
  display_name : string prop;
      (** The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters. *)
  engine_id : string prop;  (** The ID to use for chat engine. *)
  id : string prop option; [@option]  (** id *)
  industry_vertical : string prop option; [@option]
      (** The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine. Default value: GENERIC Possible values: [GENERIC] *)
  location : string prop;  (** Location. *)
  project : string prop option; [@option]  (** project *)
  chat_engine_config : chat_engine_config list;
  common_config : common_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_discovery_engine_chat_engine *)

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
    ?project ?timeouts ~collection_id ~data_store_ids ~display_name
    ~engine_id ~location ~chat_engine_config ~common_config () :
    google_discovery_engine_chat_engine =
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

let make ?id ?industry_vertical ?project ?timeouts ~collection_id
    ~data_store_ids ~display_name ~engine_id ~location
    ~chat_engine_config ~common_config __id =
  let __type = "google_discovery_engine_chat_engine" in
  let __attrs =
    ({
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
           ?project ?timeouts ~collection_id ~data_store_ids
           ~display_name ~engine_id ~location ~chat_engine_config
           ~common_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?industry_vertical ?project ?timeouts
    ~collection_id ~data_store_ids ~display_name ~engine_id ~location
    ~chat_engine_config ~common_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?industry_vertical ?project ?timeouts ~collection_id
      ~data_store_ids ~display_name ~engine_id ~location
      ~chat_engine_config ~common_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
