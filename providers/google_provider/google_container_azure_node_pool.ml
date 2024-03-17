(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_azure_node_pool__autoscaling = {
  max_node_count : float;
      (** Maximum number of nodes in the node pool. Must be >= min_node_count. *)
  min_node_count : float;
      (** Minimum number of nodes in the node pool. Must be >= 1 and <= max_node_count. *)
}
[@@deriving yojson_of]
(** Autoscaler configuration for this node pool. *)

type google_container_azure_node_pool__config__proxy_config = {
  resource_group_id : string;
      (** The ARM ID the of the resource group containing proxy keyvault. Resource group ids are formatted as `/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>` *)
  secret_id : string;
      (** The URL the of the proxy setting secret with its version. Secret ids are formatted as `https:<key-vault-name>.vault.azure.net/secrets/<secret-name>/<secret-version>`. *)
}
[@@deriving yojson_of]
(** Proxy configuration for outbound HTTP(S) traffic. *)

type google_container_azure_node_pool__config__root_volume = {
  size_gib : float option; [@option]
      (** Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. *)
}
[@@deriving yojson_of]
(** Optional. Configuration related to the root volume provisioned for each node pool machine. When unspecified, it defaults to a 32-GiB Azure Disk. *)

type google_container_azure_node_pool__config__ssh_config = {
  authorized_key : string;
      (** The SSH public key data for VMs managed by Anthos. This accepts the authorized_keys file format used in OpenSSH according to the sshd(8) manual page. *)
}
[@@deriving yojson_of]
(** SSH configuration for how to access the node pool machines. *)

type google_container_azure_node_pool__config = {
  labels : (string * string) list option; [@option]
      (** Optional. The initial labels assigned to nodes of this node pool. An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  tags : (string * string) list option; [@option]
      (** Optional. A set of tags to apply to all underlying Azure resources for this node pool. This currently only includes Virtual Machine Scale Sets. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters. *)
  vm_size : string option; [@option]
      (** Optional. The Azure VM size name. Example: `Standard_DS2_v2`. See (/anthos/clusters/docs/azure/reference/supported-vms) for options. When unspecified, it defaults to `Standard_DS2_v2`. *)
  proxy_config :
    google_container_azure_node_pool__config__proxy_config list;
  root_volume :
    google_container_azure_node_pool__config__root_volume list;
  ssh_config :
    google_container_azure_node_pool__config__ssh_config list;
}
[@@deriving yojson_of]
(** The node configuration of the node pool. *)

type google_container_azure_node_pool__management = {
  auto_repair : bool option; [@option]
      (** Optional. Whether or not the nodes will be automatically repaired. *)
}
[@@deriving yojson_of]
(** The Management configuration for this node pool. *)

type google_container_azure_node_pool__max_pods_constraint = {
  max_pods_per_node : float;
      (** The maximum number of pods to schedule on a single node. *)
}
[@@deriving yojson_of]
(** The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool. *)

type google_container_azure_node_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_container_azure_node_pool__timeouts *)

type google_container_azure_node_pool = {
  annotations : (string * string) list option; [@option]
      (** Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. *)
  cluster : string;  (** The azureCluster for the resource *)
  location : string;  (** The location for the resource *)
  name : string;  (** The name of this resource. *)
  subnet_id : string;
      (** The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration. *)
  version : string;
      (** The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool. *)
  autoscaling : google_container_azure_node_pool__autoscaling list;
  config : google_container_azure_node_pool__config list;
  management : google_container_azure_node_pool__management list;
  max_pods_constraint :
    google_container_azure_node_pool__max_pods_constraint list;
  timeouts : google_container_azure_node_pool__timeouts option;
}
[@@deriving yojson_of]
(** google_container_azure_node_pool *)

let google_container_azure_node_pool ?annotations ?timeouts ~cluster
    ~location ~name ~subnet_id ~version ~autoscaling ~config
    ~management ~max_pods_constraint __resource_id =
  let __resource_type = "google_container_azure_node_pool" in
  let __resource =
    {
      annotations;
      cluster;
      location;
      name;
      subnet_id;
      version;
      autoscaling;
      config;
      management;
      max_pods_constraint;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_azure_node_pool __resource);
  ()
