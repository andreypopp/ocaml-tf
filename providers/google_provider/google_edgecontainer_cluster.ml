(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_edgecontainer_cluster__authorization__admin_users = {
  username : string;  (** An active Google username. *)
}
[@@deriving yojson_of]
(** User that will be granted the cluster-admin role on the cluster, providing
full access to the cluster. Currently, this is a singular field, but will
be expanded to allow multiple admins in the future. *)

type google_edgecontainer_cluster__authorization = {
  admin_users :
    google_edgecontainer_cluster__authorization__admin_users list;
}
[@@deriving yojson_of]
(** RBAC policy that will be applied and managed by GEC. *)

type google_edgecontainer_cluster__control_plane__local = {
  machine_filter : string option; [@option]
      (** Only machines matching this filter will be allowed to host control
plane nodes. The filtering language accepts strings like name=<name>,
and is documented here: [AIP-160](https://google.aip.dev/160). *)
  node_count : float option; [@option]
      (** The number of nodes to serve as replicas of the Control Plane.
Only 1 and 3 are supported. *)
  node_location : string option; [@option]
      (** Name of the Google Distributed Cloud Edge zones where this node pool
will be created. For example: 'us-central1-edge-customer-a'. *)
  shared_deployment_policy : string option; [@option]
      (** Policy configuration about how user applications are deployed. Possible values: [SHARED_DEPLOYMENT_POLICY_UNSPECIFIED, ALLOWED, DISALLOWED] *)
}
[@@deriving yojson_of]
(** Local control plane configuration. *)

type google_edgecontainer_cluster__control_plane__remote = {
  node_location : string option; [@option]
      (** Name of the Google Distributed Cloud Edge zones where this node pool
will be created. For example: 'us-central1-edge-customer-a'. *)
}
[@@deriving yojson_of]
(** Remote control plane configuration. *)

type google_edgecontainer_cluster__control_plane = {
  local : google_edgecontainer_cluster__control_plane__local list;
  remote : google_edgecontainer_cluster__control_plane__remote list;
}
[@@deriving yojson_of]
(** The configuration of the cluster control plane. *)

type google_edgecontainer_cluster__control_plane_encryption__kms_status = {
  code : float;  (** code *)
  message : string;  (** message *)
}
[@@deriving yojson_of]

type google_edgecontainer_cluster__control_plane_encryption = {
  kms_key : string option; [@option]
      (** The Cloud KMS CryptoKey e.g.
projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
to use for protecting control plane disks. If not specified, a
Google-managed key will be used instead. *)
  kms_key_active_version : string;
      (** The Cloud KMS CryptoKeyVersion currently in use for protecting control
plane disks. Only applicable if kms_key is set. *)
  kms_key_state : string;
      (** Availability of the Cloud KMS CryptoKey. If not 'KEY_AVAILABLE', then
nodes may go offline as they cannot access their local data. This can be
caused by a lack of permissions to use the key, or if the key is disabled
or deleted. *)
  kms_status :
    google_edgecontainer_cluster__control_plane_encryption__kms_status
    list;
      (** Error status returned by Cloud KMS when using this key. This field may be
populated only if 'kms_key_state' is not 'KMS_KEY_STATE_KEY_AVAILABLE'.
If populated, this field contains the error status reported by Cloud KMS. *)
}
[@@deriving yojson_of]
(** Remote control plane disk encryption options. This field is only used when
enabling CMEK support. *)

type google_edgecontainer_cluster__fleet = {
  membership : string;
      (** The name of the managed Hub Membership resource associated to this cluster.
Membership names are formatted as
'projects/<project-number>/locations/global/membership/<cluster-id>'. *)
  project : string;
      (** The name of the Fleet host project where this cluster will be registered.
Project names are formatted as
'projects/<project-number>'. *)
}
[@@deriving yojson_of]
(** Fleet related configuration.
Fleets are a Google Cloud concept for logically organizing clusters,
letting you use and manage multi-cluster capabilities and apply
consistent policies across your systems. *)

type google_edgecontainer_cluster__maintenance_policy__window__recurring_window__window = {
  end_time : string option; [@option]
      (** The time that the window ends. The end time must take place after the
start time. *)
  start_time : string option; [@option]
      (** The time that the window first starts. *)
}
[@@deriving yojson_of]
(** Represents an arbitrary window of time. *)

type google_edgecontainer_cluster__maintenance_policy__window__recurring_window = {
  recurrence : string option; [@option]
      (** An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how
this window recurs. They go on for the span of time between the start and
end time. *)
  window :
    google_edgecontainer_cluster__maintenance_policy__window__recurring_window__window
    list;
}
[@@deriving yojson_of]
(** Represents an arbitrary window of time that recurs. *)

type google_edgecontainer_cluster__maintenance_policy__window = {
  recurring_window :
    google_edgecontainer_cluster__maintenance_policy__window__recurring_window
    list;
}
[@@deriving yojson_of]
(** Specifies the maintenance window in which maintenance may be performed. *)

type google_edgecontainer_cluster__maintenance_policy = {
  window :
    google_edgecontainer_cluster__maintenance_policy__window list;
}
[@@deriving yojson_of]
(** Cluster-wide maintenance policy configuration. *)

type google_edgecontainer_cluster__networking = {
  cluster_ipv4_cidr_blocks : string list;
      (** All pods in the cluster are assigned an RFC1918 IPv4 address from these
blocks. Only a single block is supported. This field cannot be changed
after creation. *)
  cluster_ipv6_cidr_blocks : string list option; [@option]
      (** If specified, dual stack mode is enabled and all pods in the cluster are
assigned an IPv6 address from these blocks alongside from an IPv4
address. Only a single block is supported. This field cannot be changed
after creation. *)
  network_type : string;
      (** IP addressing type of this cluster i.e. SINGLESTACK_V4 vs DUALSTACK_V4_V6. *)
  services_ipv4_cidr_blocks : string list;
      (** All services in the cluster are assigned an RFC1918 IPv4 address from these
blocks. Only a single block is supported. This field cannot be changed
after creation. *)
  services_ipv6_cidr_blocks : string list option; [@option]
      (** If specified, dual stack mode is enabled and all services in the cluster are
assigned an IPv6 address from these blocks alongside from an IPv4
address. Only a single block is supported. This field cannot be changed
after creation. *)
}
[@@deriving yojson_of]
(** Fleet related configuration.
Fleets are a Google Cloud concept for logically organizing clusters,
letting you use and manage multi-cluster capabilities and apply
consistent policies across your systems. *)

type google_edgecontainer_cluster__system_addons_config__ingress = {
  disabled : bool option; [@option]
      (** Whether Ingress is disabled. *)
  ipv4_vip : string option; [@option]  (** Ingress VIP. *)
}
[@@deriving yojson_of]
(** Config for the Ingress add-on which allows customers to create an Ingress
object to manage external access to the servers in a cluster. The add-on
consists of istiod and istio-ingress. *)

type google_edgecontainer_cluster__system_addons_config = {
  ingress :
    google_edgecontainer_cluster__system_addons_config__ingress list;
}
[@@deriving yojson_of]
(** Config that customers are allowed to define for GDCE system add-ons. *)

type google_edgecontainer_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_edgecontainer_cluster__timeouts *)

type google_edgecontainer_cluster__maintenance_events = {
  create_time : string;  (** create_time *)
  end_time : string;  (** end_time *)
  operation : string;  (** operation *)
  schedule : string;  (** schedule *)
  start_time : string;  (** start_time *)
  state : string;  (** state *)
  target_version : string;  (** target_version *)
  type_ : string; [@key "type"]  (** type *)
  update_time : string;  (** update_time *)
  uuid : string;  (** uuid *)
}
[@@deriving yojson_of]

type google_edgecontainer_cluster = {
  default_max_pods_per_node : float option; [@option]
      (** The default maximum number of pods per node used if a maximum value is not
specified explicitly for a node pool in this cluster. If unspecified, the
Kubernetes default value will be used. *)
  external_load_balancer_ipv4_address_pools : string list option;
      [@option]
      (** Address pools for cluster data plane external load balancing. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** User-defined labels for the edgecloud cluster.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** The location of the resource. *)
  name : string;  (** The GDCE cluster name. *)
  project : string option; [@option]  (** project *)
  release_channel : string option; [@option]
      (** The release channel a cluster is subscribed to. Possible values: [RELEASE_CHANNEL_UNSPECIFIED, NONE, REGULAR] *)
  target_version : string option; [@option]
      (** The target cluster version. For example: 1.5.0. *)
  authorization : google_edgecontainer_cluster__authorization list;
  control_plane : google_edgecontainer_cluster__control_plane list;
  control_plane_encryption :
    google_edgecontainer_cluster__control_plane_encryption list;
  fleet : google_edgecontainer_cluster__fleet list;
  maintenance_policy :
    google_edgecontainer_cluster__maintenance_policy list;
  networking : google_edgecontainer_cluster__networking list;
  system_addons_config :
    google_edgecontainer_cluster__system_addons_config list;
  timeouts : google_edgecontainer_cluster__timeouts option;
}
[@@deriving yojson_of]
(** google_edgecontainer_cluster *)

let google_edgecontainer_cluster ?default_max_pods_per_node
    ?external_load_balancer_ipv4_address_pools ?id ?labels ?project
    ?release_channel ?target_version ?timeouts ~location ~name
    ~authorization ~control_plane ~control_plane_encryption ~fleet
    ~maintenance_policy ~networking ~system_addons_config
    __resource_id =
  let __resource_type = "google_edgecontainer_cluster" in
  let __resource =
    {
      default_max_pods_per_node;
      external_load_balancer_ipv4_address_pools;
      id;
      labels;
      location;
      name;
      project;
      release_channel;
      target_version;
      authorization;
      control_plane;
      control_plane_encryption;
      fleet;
      maintenance_policy;
      networking;
      system_addons_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_edgecontainer_cluster __resource);
  ()
