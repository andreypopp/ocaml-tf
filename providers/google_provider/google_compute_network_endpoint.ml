(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_network_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_network_endpoint__timeouts *)

type google_compute_network_endpoint = {
  instance : string option; [@option]
      (** The name for a specific VM instance that the IP address belongs to.
This is required for network endpoints of type GCE_VM_IP_PORT.
The instance must be in the same zone of network endpoint group. *)
  ip_address : string;
      (** IPv4 address of network endpoint. The IP address must belong
to a VM in GCE (either the primary IP or as part of an aliased IP
range). *)
  network_endpoint_group : string;
      (** The network endpoint group this endpoint is part of. *)
  port : float option; [@option]
      (** Port number of network endpoint.
**Note** 'port' is required unless the Network Endpoint Group is created
with the type of 'GCE_VM_IP' *)
  timeouts : google_compute_network_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_endpoint *)

let google_compute_network_endpoint ?instance ?port ?timeouts
    ~ip_address ~network_endpoint_group __resource_id =
  let __resource_type = "google_compute_network_endpoint" in
  let __resource =
    { instance; ip_address; network_endpoint_group; port; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_network_endpoint __resource);
  ()
