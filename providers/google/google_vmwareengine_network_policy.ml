(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?project ?timeouts ~edge_services_cidr
    ~location ~name ~vmware_engine_network ~external_ip
    ~internet_access __id =
  let __type = "google_vmwareengine_network_policy" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       edge_services_cidr =
         Prop.computed __type __id "edge_services_cidr";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       vmware_engine_network =
         Prop.computed __type __id "vmware_engine_network";
       vmware_engine_network_canonical =
         Prop.computed __type __id "vmware_engine_network_canonical";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_network_policy
        (google_vmwareengine_network_policy ?description ?id ?project
           ?timeouts ~edge_services_cidr ~location ~name
           ~vmware_engine_network ~external_ip ~internet_access ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?timeouts
    ~edge_services_cidr ~location ~name ~vmware_engine_network
    ~external_ip ~internet_access __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?timeouts ~edge_services_cidr
      ~location ~name ~vmware_engine_network ~external_ip
      ~internet_access __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
