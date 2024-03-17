(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_azure_cluster__authorization__admin_groups = {
  group : string prop;
      (** The name of the group, e.g. `my-group@domain.com`. *)
}
[@@deriving yojson_of]
(** Groups of users that can perform operations as a cluster admin. A managed ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole to the groups. Up to ten admin groups can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles *)

type google_container_azure_cluster__authorization__admin_users = {
  username : string prop;
      (** The name of the user, e.g. `my-gcp-id@gmail.com`. *)
}
[@@deriving yojson_of]
(** Users that can perform operations as a cluster admin. A new ClusterRoleBinding will be created to grant the cluster-admin ClusterRole to the users. Up to ten admin users can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles *)

type google_container_azure_cluster__authorization = {
  admin_groups :
    google_container_azure_cluster__authorization__admin_groups list;
  admin_users :
    google_container_azure_cluster__authorization__admin_users list;
}
[@@deriving yojson_of]
(** Configuration related to the cluster RBAC settings. *)

type google_container_azure_cluster__azure_services_authentication = {
  application_id : string prop;
      (** The Azure Active Directory Application ID for Authentication configuration. *)
  tenant_id : string prop;
      (** The Azure Active Directory Tenant ID for Authentication configuration. *)
}
[@@deriving yojson_of]
(** Azure authentication configuration for management of Azure resources *)

type google_container_azure_cluster__control_plane__database_encryption = {
  key_id : string prop;
      (** The ARM ID of the Azure Key Vault key to encrypt / decrypt data. For example: `/subscriptions/<subscription-id>/resourceGroups/<resource-group-id>/providers/Microsoft.KeyVault/vaults/<key-vault-id>/keys/<key-name>` Encryption will always take the latest version of the key and hence specific version is not supported. *)
}
[@@deriving yojson_of]
(** Optional. Configuration related to application-layer secrets encryption. *)

type google_container_azure_cluster__control_plane__main_volume = {
  size_gib : float prop option; [@option]
      (** Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. *)
}
[@@deriving yojson_of]
(** Optional. Configuration related to the main volume provisioned for each control plane replica. The main volume is in charge of storing all of the cluster's etcd state. When unspecified, it defaults to a 8-GiB Azure Disk. *)

type google_container_azure_cluster__control_plane__proxy_config = {
  resource_group_id : string prop;
      (** The ARM ID the of the resource group containing proxy keyvault. Resource group ids are formatted as `/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>` *)
  secret_id : string prop;
      (** The URL the of the proxy setting secret with its version. Secret ids are formatted as `https:<key-vault-name>.vault.azure.net/secrets/<secret-name>/<secret-version>`. *)
}
[@@deriving yojson_of]
(** Proxy configuration for outbound HTTP(S) traffic. *)

type google_container_azure_cluster__control_plane__replica_placements = {
  azure_availability_zone : string prop;
      (** For a given replica, the Azure availability zone where to provision the control plane VM and the ETCD disk. *)
  subnet_id : string prop;
      (** For a given replica, the ARM ID of the subnet where the control plane VM is deployed. Make sure it's a subnet under the virtual network in the cluster configuration. *)
}
[@@deriving yojson_of]
(** Configuration for where to place the control plane replicas. Up to three replica placement instances can be specified. If replica_placements is set, the replica placement instances will be applied to the three control plane replicas as evenly as possible. *)

type google_container_azure_cluster__control_plane__root_volume = {
  size_gib : float prop option; [@option]
      (** Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. *)
}
[@@deriving yojson_of]
(** Optional. Configuration related to the root volume provisioned for each control plane replica. When unspecified, it defaults to 32-GiB Azure Disk. *)

type google_container_azure_cluster__control_plane__ssh_config = {
  authorized_key : string prop;
      (** The SSH public key data for VMs managed by Anthos. This accepts the authorized_keys file format used in OpenSSH according to the sshd(8) manual page. *)
}
[@@deriving yojson_of]
(** SSH configuration for how to access the underlying control plane machines. *)

type google_container_azure_cluster__control_plane = {
  subnet_id : string prop;
      (** The ARM ID of the subnet where the control plane VMs are deployed. Example: `/subscriptions//resourceGroups//providers/Microsoft.Network/virtualNetworks//subnets/default`. *)
  tags : (string * string prop) list option; [@option]
      (** Optional. A set of tags to apply to all underlying control plane Azure resources. *)
  version : string prop;
      (** The Kubernetes version to run on control plane replicas (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAzureServerConfig. *)
  vm_size : string prop option; [@option]
      (** Optional. The Azure VM size name. Example: `Standard_DS2_v2`. For available VM sizes, see https://docs.microsoft.com/en-us/azure/virtual-machines/vm-naming-conventions. When unspecified, it defaults to `Standard_DS2_v2`. *)
  database_encryption :
    google_container_azure_cluster__control_plane__database_encryption
    list;
  main_volume :
    google_container_azure_cluster__control_plane__main_volume list;
  proxy_config :
    google_container_azure_cluster__control_plane__proxy_config list;
  replica_placements :
    google_container_azure_cluster__control_plane__replica_placements
    list;
  root_volume :
    google_container_azure_cluster__control_plane__root_volume list;
  ssh_config :
    google_container_azure_cluster__control_plane__ssh_config list;
}
[@@deriving yojson_of]
(** Configuration related to the cluster control plane. *)

type google_container_azure_cluster__fleet = {
  membership : string prop;
      (** The name of the managed Hub Membership resource associated to this cluster. Membership names are formatted as projects/<project-number>/locations/global/membership/<cluster-id>. *)
  project : string prop option; [@option]
      (** The number of the Fleet host project where this cluster will be registered. *)
}
[@@deriving yojson_of]
(** Fleet configuration. *)

type google_container_azure_cluster__networking = {
  pod_address_cidr_blocks : string prop list;
      (** The IP address range of the pods in this cluster, in CIDR notation (e.g. `10.96.0.0/14`). All pods in the cluster get assigned a unique RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation. *)
  service_address_cidr_blocks : string prop list;
      (** The IP address range for services in this cluster, in CIDR notation (e.g. `10.96.0.0/14`). All services in the cluster get assigned a unique RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creating a cluster. *)
  virtual_network_id : string prop;
      (** The Azure Resource Manager (ARM) ID of the VNet associated with your cluster. All components in the cluster (i.e. control plane and node pools) run on a single VNet. Example: `/subscriptions/*/resourceGroups/*/providers/Microsoft.Network/virtualNetworks/*` This field cannot be changed after creation. *)
}
[@@deriving yojson_of]
(** Cluster-wide networking configuration. *)

type google_container_azure_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_container_azure_cluster__timeouts *)

type google_container_azure_cluster__workload_identity_config = {
  identity_provider : string prop;  (** identity_provider *)
  issuer_uri : string prop;  (** issuer_uri *)
  workload_pool : string prop;  (** workload_pool *)
}
[@@deriving yojson_of]

type google_container_azure_cluster = {
  annotations : (string * string prop) list option; [@option]
      (** Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. *)
  azure_region : string prop;
      (** The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region. *)
  client : string prop option; [@option]
      (** Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/<project-number>/locations/<region>/azureClients/<client-id>`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names. *)
  description : string prop option; [@option]
      (** Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;  (** The name of this resource. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  resource_group_id : string prop;
      (** The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*` *)
  authorization : google_container_azure_cluster__authorization list;
  azure_services_authentication :
    google_container_azure_cluster__azure_services_authentication
    list;
  control_plane : google_container_azure_cluster__control_plane list;
  fleet : google_container_azure_cluster__fleet list;
  networking : google_container_azure_cluster__networking list;
  timeouts : google_container_azure_cluster__timeouts option;
}
[@@deriving yojson_of]
(** google_container_azure_cluster *)

type t = {
  annotations : (string * string) list prop;
  azure_region : string prop;
  client : string prop;
  create_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  endpoint : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  resource_group_id : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
  workload_identity_config :
    google_container_azure_cluster__workload_identity_config list
    prop;
}

let google_container_azure_cluster ?annotations ?client ?description
    ?id ?project ?timeouts ~azure_region ~location ~name
    ~resource_group_id ~authorization ~azure_services_authentication
    ~control_plane ~fleet ~networking __resource_id =
  let __resource_type = "google_container_azure_cluster" in
  let __resource =
    ({
       annotations;
       azure_region;
       client;
       description;
       id;
       location;
       name;
       project;
       resource_group_id;
       authorization;
       azure_services_authentication;
       control_plane;
       fleet;
       networking;
       timeouts;
     }
      : google_container_azure_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_azure_cluster __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       azure_region =
         Prop.computed __resource_type __resource_id "azure_region";
       client = Prop.computed __resource_type __resource_id "client";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       reconciling =
         Prop.computed __resource_type __resource_id "reconciling";
       resource_group_id =
         Prop.computed __resource_type __resource_id
           "resource_group_id";
       state = Prop.computed __resource_type __resource_id "state";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       workload_identity_config =
         Prop.computed __resource_type __resource_id
           "workload_identity_config";
     }
      : t)
  in
  __resource_attributes
