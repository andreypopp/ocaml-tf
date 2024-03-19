(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type network_endpoints = {
  instance : string prop option; [@option]
      (** The name for a specific VM instance that the IP address belongs to.
This is required for network endpoints of type GCE_VM_IP_PORT.
The instance must be in the same zone as the network endpoint group. *)
  ip_address : string prop;
      (** IPv4 address of network endpoint. The IP address must belong
to a VM in GCE (either the primary IP or as part of an aliased IP
range). *)
  port : float prop option; [@option]
      (** Port number of network endpoint.
**Note** 'port' is required unless the Network Endpoint Group is created
with the type of 'GCE_VM_IP' *)
}
[@@deriving yojson_of]
(** The network endpoints to be added to the enclosing network endpoint group
(NEG). Each endpoint specifies an IP address and port, along with
additional information depending on the NEG type. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_network_endpoints = {
  id : string prop option; [@option]  (** id *)
  network_endpoint_group : string prop;
      (** The network endpoint group these endpoints are part of. *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]
      (** Zone where the containing network endpoint group is located. *)
  network_endpoints : network_endpoints list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_endpoints *)

let network_endpoints ?instance ?port ~ip_address () :
    network_endpoints =
  { instance; ip_address; port }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_network_endpoints ?id ?project ?zone ?timeouts
    ~network_endpoint_group ~network_endpoints () :
    google_compute_network_endpoints =
  {
    id;
    network_endpoint_group;
    project;
    zone;
    network_endpoints;
    timeouts;
  }

type t = {
  id : string prop;
  network_endpoint_group : string prop;
  project : string prop;
  zone : string prop;
}

let register ?tf_module ?id ?project ?zone ?timeouts
    ~network_endpoint_group ~network_endpoints __resource_id =
  let __resource_type = "google_compute_network_endpoints" in
  let __resource =
    google_compute_network_endpoints ?id ?project ?zone ?timeouts
      ~network_endpoint_group ~network_endpoints ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_network_endpoints __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       network_endpoint_group =
         Prop.computed __resource_type __resource_id
           "network_endpoint_group";
       project =
         Prop.computed __resource_type __resource_id "project";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
