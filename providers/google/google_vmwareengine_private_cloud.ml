(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type management_cluster__node_type_configs = {
  custom_core_count : float prop option; [@option]
      (** Customized number of cores available to each node of the type.
This number must always be one of 'nodeType.availableCustomCoreCounts'.
If zero is provided max value from 'nodeType.availableCustomCoreCounts' will be used.
This cannot be changed once the PrivateCloud is created. *)
  node_count : float prop;
      (** The number of nodes of this type in the cluster. *)
  node_type_id : string prop;  (** node_type_id *)
}
[@@deriving yojson_of]
(** The map of cluster node types in this cluster,
where the key is canonical identifier of the node type (corresponds to the NodeType). *)

type management_cluster = {
  cluster_id : string prop;
      (** The user-provided identifier of the new Cluster. The identifier must meet the following requirements:
  * Only contains 1-63 alphanumeric characters and hyphens
  * Begins with an alphabetical character
  * Ends with a non-hyphen character
  * Not formatted as a UUID
  * Complies with RFC 1034 (https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5) *)
  node_type_configs : management_cluster__node_type_configs list;
}
[@@deriving yojson_of]
(** The management cluster for this private cloud. This used for creating and managing the default cluster. *)

type network_config = {
  management_cidr : string prop;
      (** Management CIDR used by VMware management appliances. *)
  vmware_engine_network : string prop option; [@option]
      (** The relative resource name of the VMware Engine network attached to the private cloud.
Specify the name in the following form: projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
where {project} can either be a project number or a project ID. *)
}
[@@deriving yojson_of]
(** Network configuration in the consumer project with which the peering has to be done. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type hcx = {
  fqdn : string prop;  (** fqdn *)
  internal_ip : string prop;  (** internal_ip *)
  state : string prop;  (** state *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]

type nsx = {
  fqdn : string prop;  (** fqdn *)
  internal_ip : string prop;  (** internal_ip *)
  state : string prop;  (** state *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]

type vcenter = {
  fqdn : string prop;  (** fqdn *)
  internal_ip : string prop;  (** internal_ip *)
  state : string prop;  (** state *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]

type google_vmwareengine_private_cloud = {
  description : string prop option; [@option]
      (** User-provided description for this private cloud. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location where the PrivateCloud should reside. *)
  name : string prop;  (** The ID of the PrivateCloud. *)
  project : string prop option; [@option]  (** project *)
  type_ : string prop option; [@option] [@key "type"]
      (** Initial type of the private cloud. Possible values: [STANDARD, TIME_LIMITED] *)
  management_cluster : management_cluster list;
  network_config : network_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_private_cloud *)

let management_cluster__node_type_configs ?custom_core_count
    ~node_count ~node_type_id () :
    management_cluster__node_type_configs =
  { custom_core_count; node_count; node_type_id }

let management_cluster ~cluster_id ~node_type_configs () :
    management_cluster =
  { cluster_id; node_type_configs }

let network_config ?vmware_engine_network ~management_cidr () :
    network_config =
  { management_cidr; vmware_engine_network }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_private_cloud ?description ?id ?project
    ?type_ ?timeouts ~location ~name ~management_cluster
    ~network_config () : google_vmwareengine_private_cloud =
  {
    description;
    id;
    location;
    name;
    project;
    type_;
    management_cluster;
    network_config;
    timeouts;
  }

type t = {
  description : string prop;
  hcx : hcx list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  nsx : nsx list prop;
  project : string prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  vcenter : vcenter list prop;
}

let register ?tf_module ?description ?id ?project ?type_ ?timeouts
    ~location ~name ~management_cluster ~network_config __resource_id
    =
  let __resource_type = "google_vmwareengine_private_cloud" in
  let __resource =
    google_vmwareengine_private_cloud ?description ?id ?project
      ?type_ ?timeouts ~location ~name ~management_cluster
      ~network_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_private_cloud __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       hcx = Prop.computed __resource_type __resource_id "hcx";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       nsx = Prop.computed __resource_type __resource_id "nsx";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       type_ = Prop.computed __resource_type __resource_id "type";
       uid = Prop.computed __resource_type __resource_id "uid";
       vcenter =
         Prop.computed __resource_type __resource_id "vcenter";
     }
      : t)
  in
  __resource_attributes
