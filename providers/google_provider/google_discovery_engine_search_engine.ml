(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_discovery_engine_search_engine__common_config = {
  company_name : string option; [@option]
      (** The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.cd *)
}
[@@deriving yojson_of]
(** Common config spec that specifies the metadata of the engine. *)

type google_discovery_engine_search_engine__search_engine_config = {
  search_add_ons : string list option; [@option]
      (** The add-on that this search engine enables. Possible values: [SEARCH_ADD_ON_LLM] *)
  search_tier : string option; [@option]
      (** The search feature tier of this engine. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified. Default value: SEARCH_TIER_STANDARD Possible values: [SEARCH_TIER_STANDARD, SEARCH_TIER_ENTERPRISE] *)
}
[@@deriving yojson_of]
(** Configurations for a Search Engine. *)

type google_discovery_engine_search_engine__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_discovery_engine_search_engine__timeouts *)

type google_discovery_engine_search_engine = {
  collection_id : string;  (** The collection ID. *)
  data_store_ids : string list;
      (** The data stores associated with this engine. For SOLUTION_TYPE_SEARCH type of engines, they can only associate with at most one data store. *)
  display_name : string;
      (** Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters. *)
  engine_id : string;  (** Unique ID to use for Search Engine App. *)
  id : string option; [@option]  (** id *)
  industry_vertical : string option; [@option]
      (** The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine. Default value: GENERIC Possible values: [GENERIC, MEDIA] *)
  location : string;  (** Location. *)
  project : string option; [@option]  (** project *)
  common_config :
    google_discovery_engine_search_engine__common_config list;
  search_engine_config :
    google_discovery_engine_search_engine__search_engine_config list;
  timeouts : google_discovery_engine_search_engine__timeouts option;
}
[@@deriving yojson_of]
(** google_discovery_engine_search_engine *)

let google_discovery_engine_search_engine ?id ?industry_vertical
    ?project ?timeouts ~collection_id ~data_store_ids ~display_name
    ~engine_id ~location ~common_config ~search_engine_config
    __resource_id =
  let __resource_type = "google_discovery_engine_search_engine" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_discovery_engine_search_engine __resource);
  ()
