(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_network_endpoint_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_network_endpoint_group__timeouts *)

type google_compute_network_endpoint_group = {
  default_port : float prop option; [@option]
      (** The default port used if the port number is not specified in the
network endpoint. *)
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network : string prop;
      (** The network to which all network endpoints in the NEG belong.
Uses default project network if unspecified. *)
  network_endpoint_type : string prop option; [@option]
      (** Type of network endpoints in this network endpoint group.
NON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network
endpoint groups (see https://cloud.google.com/load-balancing/docs/hybrid).
Note that NON_GCP_PRIVATE_IP_PORT can only be used with Backend Services
that 1) have the following load balancing schemes: EXTERNAL, EXTERNAL_MANAGED,
INTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the RATE or
CONNECTION balancing modes.

Possible values include: GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, SERVERLESS, and PRIVATE_SERVICE_CONNECT. Default value: GCE_VM_IP_PORT Possible values: [GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT] *)
  project : string prop option; [@option]  (** project *)
  subnetwork : string prop option; [@option]
      (** Optional subnetwork to which all network endpoints in the NEG belong. *)
  zone : string prop option; [@option]
      (** Zone where the network endpoint group is located. *)
  timeouts : google_compute_network_endpoint_group__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_endpoint_group *)

let google_compute_network_endpoint_group ?default_port ?description
    ?id ?network_endpoint_type ?project ?subnetwork ?zone ?timeouts
    ~name ~network __resource_id =
  let __resource_type = "google_compute_network_endpoint_group" in
  let __resource =
    {
      default_port;
      description;
      id;
      name;
      network;
      network_endpoint_type;
      project;
      subnetwork;
      zone;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_network_endpoint_group __resource);
  ()
