(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_network_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_network_endpoint__timeouts *)

type google_compute_network_endpoint = {
  id : string prop option; [@option]  (** id *)
  instance : string prop option; [@option]
      (** The name for a specific VM instance that the IP address belongs to.
This is required for network endpoints of type GCE_VM_IP_PORT.
The instance must be in the same zone of network endpoint group. *)
  ip_address : string prop;
      (** IPv4 address of network endpoint. The IP address must belong
to a VM in GCE (either the primary IP or as part of an aliased IP
range). *)
  network_endpoint_group : string prop;
      (** The network endpoint group this endpoint is part of. *)
  port : float prop option; [@option]
      (** Port number of network endpoint.
**Note** 'port' is required unless the Network Endpoint Group is created
with the type of 'GCE_VM_IP' *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]
      (** Zone where the containing network endpoint group is located. *)
  timeouts : google_compute_network_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_endpoint *)

type t = {
  id : string prop;
  instance : string prop;
  ip_address : string prop;
  network_endpoint_group : string prop;
  port : float prop;
  project : string prop;
  zone : string prop;
}

let google_compute_network_endpoint ?id ?instance ?port ?project
    ?zone ?timeouts ~ip_address ~network_endpoint_group __resource_id
    =
  let __resource_type = "google_compute_network_endpoint" in
  let __resource =
    ({
       id;
       instance;
       ip_address;
       network_endpoint_group;
       port;
       project;
       zone;
       timeouts;
     }
      : google_compute_network_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_network_endpoint __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance =
         Prop.computed __resource_type __resource_id "instance";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       network_endpoint_group =
         Prop.computed __resource_type __resource_id
           "network_endpoint_group";
       port = Prop.computed __resource_type __resource_id "port";
       project =
         Prop.computed __resource_type __resource_id "project";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
