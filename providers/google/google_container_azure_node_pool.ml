(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type autoscaling = {
  max_node_count : float prop;
      (** Maximum number of nodes in the node pool. Must be >= min_node_count. *)
  min_node_count : float prop;
      (** Minimum number of nodes in the node pool. Must be >= 1 and <= max_node_count. *)
}
[@@deriving yojson_of]
(** Autoscaler configuration for this node pool. *)

type config__proxy_config = {
  resource_group_id : string prop;
      (** The ARM ID the of the resource group containing proxy keyvault. Resource group ids are formatted as `/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>` *)
  secret_id : string prop;
      (** The URL the of the proxy setting secret with its version. Secret ids are formatted as `https:<key-vault-name>.vault.azure.net/secrets/<secret-name>/<secret-version>`. *)
}
[@@deriving yojson_of]
(** Proxy configuration for outbound HTTP(S) traffic. *)

type config__root_volume = {
  size_gib : float prop option; [@option]
      (** Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. *)
}
[@@deriving yojson_of]
(** Optional. Configuration related to the root volume provisioned for each node pool machine. When unspecified, it defaults to a 32-GiB Azure Disk. *)

type config__ssh_config = {
  authorized_key : string prop;
      (** The SSH public key data for VMs managed by Anthos. This accepts the authorized_keys file format used in OpenSSH according to the sshd(8) manual page. *)
}
[@@deriving yojson_of]
(** SSH configuration for how to access the node pool machines. *)

type config = {
  labels : (string * string prop) list option; [@option]
      (** Optional. The initial labels assigned to nodes of this node pool. An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  tags : (string * string prop) list option; [@option]
      (** Optional. A set of tags to apply to all underlying Azure resources for this node pool. This currently only includes Virtual Machine Scale Sets. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters. *)
  vm_size : string prop option; [@option]
      (** Optional. The Azure VM size name. Example: `Standard_DS2_v2`. See (/anthos/clusters/docs/azure/reference/supported-vms) for options. When unspecified, it defaults to `Standard_DS2_v2`. *)
  proxy_config : config__proxy_config list;
  root_volume : config__root_volume list;
  ssh_config : config__ssh_config list;
}
[@@deriving yojson_of]
(** The node configuration of the node pool. *)

type management = {
  auto_repair : bool prop option; [@option]
      (** Optional. Whether or not the nodes will be automatically repaired. *)
}
[@@deriving yojson_of]
(** The Management configuration for this node pool. *)

type max_pods_constraint = {
  max_pods_per_node : float prop;
      (** The maximum number of pods to schedule on a single node. *)
}
[@@deriving yojson_of]
(** The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_container_azure_node_pool = {
  annotations : (string * string prop) list option; [@option]
      (** Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. *)
  azure_availability_zone : string prop option; [@option]
      (** Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`. *)
  cluster : string prop;  (** The azureCluster for the resource *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;  (** The name of this resource. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  subnet_id : string prop;
      (** The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration. *)
  version : string prop;
      (** The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool. *)
  autoscaling : autoscaling list;
  config : config list;
  management : management list;
  max_pods_constraint : max_pods_constraint list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_container_azure_node_pool *)

let autoscaling ~max_node_count ~min_node_count () : autoscaling =
  { max_node_count; min_node_count }

let config__proxy_config ~resource_group_id ~secret_id () :
    config__proxy_config =
  { resource_group_id; secret_id }

let config__root_volume ?size_gib () : config__root_volume =
  { size_gib }

let config__ssh_config ~authorized_key () : config__ssh_config =
  { authorized_key }

let config ?labels ?tags ?vm_size ~proxy_config ~root_volume
    ~ssh_config () : config =
  { labels; tags; vm_size; proxy_config; root_volume; ssh_config }

let management ?auto_repair () : management = { auto_repair }

let max_pods_constraint ~max_pods_per_node () : max_pods_constraint =
  { max_pods_per_node }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_container_azure_node_pool ?annotations
    ?azure_availability_zone ?id ?project ?timeouts ~cluster
    ~location ~name ~subnet_id ~version ~autoscaling ~config
    ~management ~max_pods_constraint () :
    google_container_azure_node_pool =
  {
    annotations;
    azure_availability_zone;
    cluster;
    id;
    location;
    name;
    project;
    subnet_id;
    version;
    autoscaling;
    config;
    management;
    max_pods_constraint;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  azure_availability_zone : string prop;
  cluster : string prop;
  create_time : string prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  subnet_id : string prop;
  uid : string prop;
  update_time : string prop;
  version : string prop;
}

let register ?tf_module ?annotations ?azure_availability_zone ?id
    ?project ?timeouts ~cluster ~location ~name ~subnet_id ~version
    ~autoscaling ~config ~management ~max_pods_constraint
    __resource_id =
  let __resource_type = "google_container_azure_node_pool" in
  let __resource =
    google_container_azure_node_pool ?annotations
      ?azure_availability_zone ?id ?project ?timeouts ~cluster
      ~location ~name ~subnet_id ~version ~autoscaling ~config
      ~management ~max_pods_constraint ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_azure_node_pool __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       azure_availability_zone =
         Prop.computed __resource_type __resource_id
           "azure_availability_zone";
       cluster =
         Prop.computed __resource_type __resource_id "cluster";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       reconciling =
         Prop.computed __resource_type __resource_id "reconciling";
       state = Prop.computed __resource_type __resource_id "state";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
