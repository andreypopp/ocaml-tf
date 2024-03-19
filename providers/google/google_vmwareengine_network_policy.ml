(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type external_ip = {
  enabled : bool prop option; [@option]
      (** True if the service is enabled; false otherwise. *)
}
[@@deriving yojson_of]
(** Network service that allows External IP addresses to be assigned to VMware workloads.
This service can only be enabled when internetAccess is also enabled. *)

type internet_access = {
  enabled : bool prop option; [@option]
      (** True if the service is enabled; false otherwise. *)
}
[@@deriving yojson_of]
(** Network service that allows VMware workloads to access the internet. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  external_ip : external_ip list;
  internet_access : internet_access list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_network_policy *)

let external_ip ?enabled () : external_ip = { enabled }
let internet_access ?enabled () : internet_access = { enabled }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_network_policy ?description ?id ?project
    ?timeouts ~edge_services_cidr ~location ~name
    ~vmware_engine_network ~external_ip ~internet_access () :
    google_vmwareengine_network_policy =
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

type t = {
  create_time : string prop;
  description : string prop;
  edge_services_cidr : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  uid : string prop;
  update_time : string prop;
  vmware_engine_network : string prop;
  vmware_engine_network_canonical : string prop;
}

let register ?tf_module ?description ?id ?project ?timeouts
    ~edge_services_cidr ~location ~name ~vmware_engine_network
    ~external_ip ~internet_access __resource_id =
  let __resource_type = "google_vmwareengine_network_policy" in
  let __resource =
    google_vmwareengine_network_policy ?description ?id ?project
      ?timeouts ~edge_services_cidr ~location ~name
      ~vmware_engine_network ~external_ip ~internet_access ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_network_policy __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       edge_services_cidr =
         Prop.computed __resource_type __resource_id
           "edge_services_cidr";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       vmware_engine_network =
         Prop.computed __resource_type __resource_id
           "vmware_engine_network";
       vmware_engine_network_canonical =
         Prop.computed __resource_type __resource_id
           "vmware_engine_network_canonical";
     }
      : t)
  in
  __resource_attributes
