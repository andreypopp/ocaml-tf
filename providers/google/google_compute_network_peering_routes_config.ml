(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_network_peering_routes_config__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_network_peering_routes_config__timeouts *)

type google_compute_network_peering_routes_config = {
  export_custom_routes : bool prop;
      (** Whether to export the custom routes to the peer network. *)
  id : string prop option; [@option]  (** id *)
  import_custom_routes : bool prop;
      (** Whether to import the custom routes to the peer network. *)
  network : string prop;
      (** The name of the primary network for the peering. *)
  peering : string prop;  (** Name of the peering. *)
  project : string prop option; [@option]  (** project *)
  timeouts :
    google_compute_network_peering_routes_config__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_peering_routes_config *)

type t = {
  export_custom_routes : bool prop;
  id : string prop;
  import_custom_routes : bool prop;
  network : string prop;
  peering : string prop;
  project : string prop;
}

let google_compute_network_peering_routes_config ?id ?project
    ?timeouts ~export_custom_routes ~import_custom_routes ~network
    ~peering __resource_id =
  let __resource_type =
    "google_compute_network_peering_routes_config"
  in
  let __resource =
    ({
       export_custom_routes;
       id;
       import_custom_routes;
       network;
       peering;
       project;
       timeouts;
     }
      : google_compute_network_peering_routes_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_network_peering_routes_config
       __resource);
  let __resource_attributes =
    ({
       export_custom_routes =
         Prop.computed __resource_type __resource_id
           "export_custom_routes";
       id = Prop.computed __resource_type __resource_id "id";
       import_custom_routes =
         Prop.computed __resource_type __resource_id
           "import_custom_routes";
       network =
         Prop.computed __resource_type __resource_id "network";
       peering =
         Prop.computed __resource_type __resource_id "peering";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
