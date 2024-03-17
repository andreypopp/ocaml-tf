(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_discovery_engine_data_store__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_discovery_engine_data_store__timeouts *)

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
  timeouts : google_discovery_engine_data_store__timeouts option;
}
[@@deriving yojson_of]
(** google_discovery_engine_data_store *)

let google_discovery_engine_data_store ?create_advanced_site_search
    ?id ?project ?solution_types ?timeouts ~content_config
    ~data_store_id ~display_name ~industry_vertical ~location
    __resource_id =
  let __resource_type = "google_discovery_engine_data_store" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_discovery_engine_data_store __resource);
  ()
