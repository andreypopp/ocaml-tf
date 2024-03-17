(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_network_endpoints__network_endpoints = {
  instance : string option; [@option]
      (** The name for a specific VM instance that the IP address belongs to.
This is required for network endpoints of type GCE_VM_IP_PORT.
The instance must be in the same zone as the network endpoint group. *)
  ip_address : string;
      (** IPv4 address of network endpoint. The IP address must belong
to a VM in GCE (either the primary IP or as part of an aliased IP
range). *)
  port : float option; [@option]
      (** Port number of network endpoint.
**Note** 'port' is required unless the Network Endpoint Group is created
with the type of 'GCE_VM_IP' *)
}
[@@deriving yojson_of]
(** The network endpoints to be added to the enclosing network endpoint group
(NEG). Each endpoint specifies an IP address and port, along with
additional information depending on the NEG type. *)

type google_compute_network_endpoints__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_network_endpoints__timeouts *)

type google_compute_network_endpoints = {
  network_endpoint_group : string;
      (** The network endpoint group these endpoints are part of. *)
  network_endpoints :
    google_compute_network_endpoints__network_endpoints list;
  timeouts : google_compute_network_endpoints__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_endpoints *)

let google_compute_network_endpoints ?timeouts
    ~network_endpoint_group ~network_endpoints __resource_id =
  let __resource_type = "google_compute_network_endpoints" in
  let __resource =
    { network_endpoint_group; network_endpoints; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_network_endpoints __resource);
  ()
