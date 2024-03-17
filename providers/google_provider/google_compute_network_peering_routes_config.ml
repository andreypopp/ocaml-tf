(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_network_peering_routes_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_network_peering_routes_config__timeouts *)

type google_compute_network_peering_routes_config = {
  export_custom_routes : bool;
      (** Whether to export the custom routes to the peer network. *)
  id : string option; [@option]  (** id *)
  import_custom_routes : bool;
      (** Whether to import the custom routes to the peer network. *)
  network : string;
      (** The name of the primary network for the peering. *)
  peering : string;  (** Name of the peering. *)
  project : string option; [@option]  (** project *)
  timeouts :
    google_compute_network_peering_routes_config__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_peering_routes_config *)

let google_compute_network_peering_routes_config ?id ?project
    ?timeouts ~export_custom_routes ~import_custom_routes ~network
    ~peering __resource_id =
  let __resource_type =
    "google_compute_network_peering_routes_config"
  in
  let __resource =
    {
      export_custom_routes;
      id;
      import_custom_routes;
      network;
      peering;
      project;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_network_peering_routes_config
       __resource);
  ()
