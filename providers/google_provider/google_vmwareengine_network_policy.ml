(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vmwareengine_network_policy__external_ip = {
  enabled : bool prop option; [@option]
      (** True if the service is enabled; false otherwise. *)
  state : string prop;
      (** State of the service. New values may be added to this enum when appropriate. *)
}
[@@deriving yojson_of]
(** Network service that allows External IP addresses to be assigned to VMware workloads.
This service can only be enabled when internetAccess is also enabled. *)

type google_vmwareengine_network_policy__internet_access = {
  enabled : bool prop option; [@option]
      (** True if the service is enabled; false otherwise. *)
  state : string prop;
      (** State of the service. New values may be added to this enum when appropriate. *)
}
[@@deriving yojson_of]
(** Network service that allows VMware workloads to access the internet. *)

type google_vmwareengine_network_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vmwareengine_network_policy__timeouts *)

type google_vmwareengine_network_policy = {
  description : string prop option; [@option]
      (** User-provided description for this network policy. *)
  edge_services_cidr : string prop;
      (** IP address range in CIDR notation used to create internet access and external IP access.
An RFC 1918 CIDR block, with a /26 prefix, is required. The range cannot overlap with any
prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The resource name of the location (region) to create the new network policy in.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-central1 *)
  name : string prop;  (** The ID of the Network Policy. *)
  project : string prop option; [@option]  (** project *)
  vmware_engine_network : string prop;
      (** The relative resource name of the VMware Engine network. Specify the name in the following form:
projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
can either be a project number or a project ID. *)
  external_ip : google_vmwareengine_network_policy__external_ip list;
  internet_access :
    google_vmwareengine_network_policy__internet_access list;
  timeouts : google_vmwareengine_network_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_network_policy *)

let google_vmwareengine_network_policy ?description ?id ?project
    ?timeouts ~edge_services_cidr ~location ~name
    ~vmware_engine_network ~external_ip ~internet_access
    __resource_id =
  let __resource_type = "google_vmwareengine_network_policy" in
  let __resource =
    {
      description;
      edge_services_cidr;
      id;
      location;
      name;
      project;
      vmware_engine_network;
      external_ip;
      internet_access;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_network_policy __resource);
  ()
