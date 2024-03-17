(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_network_peering__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_network_peering__timeouts *)

type google_compute_network_peering = {
  export_custom_routes : bool prop option; [@option]
      (** Whether to export the custom routes to the peer network. Defaults to false. *)
  export_subnet_routes_with_public_ip : bool prop option; [@option]
      (** export_subnet_routes_with_public_ip *)
  id : string prop option; [@option]  (** id *)
  import_custom_routes : bool prop option; [@option]
      (** Whether to export the custom routes from the peer network. Defaults to false. *)
  import_subnet_routes_with_public_ip : bool prop option; [@option]
      (** import_subnet_routes_with_public_ip *)
  name : string prop;  (** Name of the peering. *)
  network : string prop;  (** The primary network of the peering. *)
  peer_network : string prop;
      (** The peer network in the peering. The peer network may belong to a different project. *)
  stack_type : string prop option; [@option]
      (** Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY. Possible values: [IPV4_ONLY, IPV4_IPV6] *)
  timeouts : google_compute_network_peering__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_peering *)

type t = {
  export_custom_routes : bool prop;
  export_subnet_routes_with_public_ip : bool prop;
  id : string prop;
  import_custom_routes : bool prop;
  import_subnet_routes_with_public_ip : bool prop;
  name : string prop;
  network : string prop;
  peer_network : string prop;
  stack_type : string prop;
  state : string prop;
  state_details : string prop;
}

let google_compute_network_peering ?export_custom_routes
    ?export_subnet_routes_with_public_ip ?id ?import_custom_routes
    ?import_subnet_routes_with_public_ip ?stack_type ?timeouts ~name
    ~network ~peer_network __resource_id =
  let __resource_type = "google_compute_network_peering" in
  let __resource =
    ({
       export_custom_routes;
       export_subnet_routes_with_public_ip;
       id;
       import_custom_routes;
       import_subnet_routes_with_public_ip;
       name;
       network;
       peer_network;
       stack_type;
       timeouts;
     }
      : google_compute_network_peering)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_network_peering __resource);
  let __resource_attributes =
    ({
       export_custom_routes =
         Prop.computed __resource_type __resource_id
           "export_custom_routes";
       export_subnet_routes_with_public_ip =
         Prop.computed __resource_type __resource_id
           "export_subnet_routes_with_public_ip";
       id = Prop.computed __resource_type __resource_id "id";
       import_custom_routes =
         Prop.computed __resource_type __resource_id
           "import_custom_routes";
       import_subnet_routes_with_public_ip =
         Prop.computed __resource_type __resource_id
           "import_subnet_routes_with_public_ip";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       peer_network =
         Prop.computed __resource_type __resource_id "peer_network";
       stack_type =
         Prop.computed __resource_type __resource_id "stack_type";
       state = Prop.computed __resource_type __resource_id "state";
       state_details =
         Prop.computed __resource_type __resource_id "state_details";
     }
      : t)
  in
  __resource_attributes
