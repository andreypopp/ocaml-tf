(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_vmwareengine_private_cloud__management_cluster__node_type_configs = {
  custom_core_count : float option; [@option]
      (** Customized number of cores available to each node of the type.
This number must always be one of 'nodeType.availableCustomCoreCounts'.
If zero is provided max value from 'nodeType.availableCustomCoreCounts' will be used.
This cannot be changed once the PrivateCloud is created. *)
  node_count : float;
      (** The number of nodes of this type in the cluster. *)
  node_type_id : string;  (** node_type_id *)
}
[@@deriving yojson_of]
(** The map of cluster node types in this cluster,
where the key is canonical identifier of the node type (corresponds to the NodeType). *)

type google_vmwareengine_private_cloud__management_cluster = {
  cluster_id : string;
      (** The user-provided identifier of the new Cluster. The identifier must meet the following requirements:
  * Only contains 1-63 alphanumeric characters and hyphens
  * Begins with an alphabetical character
  * Ends with a non-hyphen character
  * Not formatted as a UUID
  * Complies with RFC 1034 (https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5) *)
  node_type_configs :
    google_vmwareengine_private_cloud__management_cluster__node_type_configs
    list;
}
[@@deriving yojson_of]
(** The management cluster for this private cloud. This used for creating and managing the default cluster. *)

type google_vmwareengine_private_cloud__network_config = {
  dns_server_ip : string;  (** DNS Server IP of the Private Cloud. *)
  management_cidr : string;
      (** Management CIDR used by VMware management appliances. *)
  management_ip_address_layout_version : float;
      (** The IP address layout version of the management IP address range.
Possible versions include:
* managementIpAddressLayoutVersion=1: Indicates the legacy IP address layout used by some existing private clouds. This is no longer supported for new private clouds
as it does not support all features.
* managementIpAddressLayoutVersion=2: Indicates the latest IP address layout
used by all newly created private clouds. This version supports all current features. *)
  vmware_engine_network : string option; [@option]
      (** The relative resource name of the VMware Engine network attached to the private cloud.
Specify the name in the following form: projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
where {project} can either be a project number or a project ID. *)
  vmware_engine_network_canonical : string;
      (** The canonical name of the VMware Engine network in
the form: projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} *)
}
[@@deriving yojson_of]
(** Network configuration in the consumer project with which the peering has to be done. *)

type google_vmwareengine_private_cloud__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vmwareengine_private_cloud__timeouts *)

type google_vmwareengine_private_cloud__hcx = {
  fqdn : string;  (** fqdn *)
  internal_ip : string;  (** internal_ip *)
  state : string;  (** state *)
  version : string;  (** version *)
}
[@@deriving yojson_of]

type google_vmwareengine_private_cloud__nsx = {
  fqdn : string;  (** fqdn *)
  internal_ip : string;  (** internal_ip *)
  state : string;  (** state *)
  version : string;  (** version *)
}
[@@deriving yojson_of]

type google_vmwareengine_private_cloud__vcenter = {
  fqdn : string;  (** fqdn *)
  internal_ip : string;  (** internal_ip *)
  state : string;  (** state *)
  version : string;  (** version *)
}
[@@deriving yojson_of]

type google_vmwareengine_private_cloud = {
  description : string option; [@option]
      (** User-provided description for this private cloud. *)
  location : string;
      (** The location where the PrivateCloud should reside. *)
  name : string;  (** The ID of the PrivateCloud. *)
  type_ : string option; [@option] [@key "type"]
      (** Initial type of the private cloud. Possible values: [STANDARD, TIME_LIMITED] *)
  management_cluster :
    google_vmwareengine_private_cloud__management_cluster list;
  network_config :
    google_vmwareengine_private_cloud__network_config list;
  timeouts : google_vmwareengine_private_cloud__timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_private_cloud *)

let google_vmwareengine_private_cloud ?description ?type_ ?timeouts
    ~location ~name ~management_cluster ~network_config __resource_id
    =
  let __resource_type = "google_vmwareengine_private_cloud" in
  let __resource =
    {
      description;
      location;
      name;
      type_;
      management_cluster;
      network_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_private_cloud __resource);
  ()
