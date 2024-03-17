(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_discovery_engine_chat_engine__chat_engine_config__agent_creation_config = {
  business : string option; [@option]
      (** Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search. *)
  default_language_code : string;
      (** The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes. *)
  location : string option; [@option]
      (** Agent location for Agent creation, currently supported values: global/us/eu, it needs to be the same region as the Chat Engine. *)
  time_zone : string;
      (** The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. *)
}
[@@deriving yojson_of]
(** The configuration to generate the Dialogflow agent that is associated to this Engine. *)

type google_discovery_engine_chat_engine__chat_engine_config = {
  agent_creation_config :
    google_discovery_engine_chat_engine__chat_engine_config__agent_creation_config
    list;
}
[@@deriving yojson_of]
(** Configurations for a chat Engine. *)

type google_discovery_engine_chat_engine__common_config = {
  company_name : string option; [@option]
      (** The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features. *)
}
[@@deriving yojson_of]
(** Common config spec that specifies the metadata of the engine. *)

type google_discovery_engine_chat_engine__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_discovery_engine_chat_engine__timeouts *)

type google_discovery_engine_chat_engine__chat_engine_metadata = {
  dialogflow_agent : string;  (** dialogflow_agent *)
}
[@@deriving yojson_of]

type google_discovery_engine_chat_engine = {
  collection_id : string;  (** The collection ID. *)
  data_store_ids : string list;
      (** The data stores associated with this engine. Multiple DataStores in the same Collection can be associated here. All listed DataStores must be 'SOLUTION_TYPE_CHAT'. Adding or removing data stores will force recreation. *)
  display_name : string;
      (** The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters. *)
  engine_id : string;  (** The ID to use for chat engine. *)
  industry_vertical : string option; [@option]
      (** The industry vertical that the chat engine registers. Vertical on Engine has to match vertical of the DataStore linked to the engine. Default value: GENERIC Possible values: [GENERIC] *)
  location : string;  (** Location. *)
  chat_engine_config :
    google_discovery_engine_chat_engine__chat_engine_config list;
  common_config :
    google_discovery_engine_chat_engine__common_config list;
  timeouts : google_discovery_engine_chat_engine__timeouts option;
}
[@@deriving yojson_of]
(** google_discovery_engine_chat_engine *)

let google_discovery_engine_chat_engine ?industry_vertical ?timeouts
    ~collection_id ~data_store_ids ~display_name ~engine_id ~location
    ~chat_engine_config ~common_config __resource_id =
  let __resource_type = "google_discovery_engine_chat_engine" in
  let __resource =
    {
      collection_id;
      data_store_ids;
      display_name;
      engine_id;
      industry_vertical;
      location;
      chat_engine_config;
      common_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_discovery_engine_chat_engine __resource);
  ()
