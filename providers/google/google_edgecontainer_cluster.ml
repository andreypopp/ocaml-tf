(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authorization__admin_users = {
  username : string prop;  (** An active Google username. *)
}
[@@deriving yojson_of]
(** User that will be granted the cluster-admin role on the cluster, providing
full access to the cluster. Currently, this is a singular field, but will
be expanded to allow multiple admins in the future. *)

type authorization = {
  admin_users : authorization__admin_users list;
}
[@@deriving yojson_of]
(** RBAC policy that will be applied and managed by GEC. *)

type control_plane__local = {
  machine_filter : string prop option; [@option]
      (** Only machines matching this filter will be allowed to host control
plane nodes. The filtering language accepts strings like name=<name>,
and is documented here: [AIP-160](https://google.aip.dev/160). *)
  node_count : float prop option; [@option]
      (** The number of nodes to serve as replicas of the Control Plane.
Only 1 and 3 are supported. *)
  node_location : string prop option; [@option]
      (** Name of the Google Distributed Cloud Edge zones where this node pool
will be created. For example: 'us-central1-edge-customer-a'. *)
  shared_deployment_policy : string prop option; [@option]
      (** Policy configuration about how user applications are deployed. Possible values: [SHARED_DEPLOYMENT_POLICY_UNSPECIFIED, ALLOWED, DISALLOWED] *)
}
[@@deriving yojson_of]
(** Local control plane configuration. *)

type control_plane__remote = {
  node_location : string prop option; [@option]
      (** Name of the Google Distributed Cloud Edge zones where this node pool
will be created. For example: 'us-central1-edge-customer-a'. *)
}
[@@deriving yojson_of]
(** Remote control plane configuration. *)

type control_plane = {
  local : control_plane__local list;
  remote : control_plane__remote list;
}
[@@deriving yojson_of]
(** The configuration of the cluster control plane. *)

type control_plane_encryption__kms_status = {
  code : float prop;  (** code *)
  message : string prop;  (** message *)
}
[@@deriving yojson_of]

type control_plane_encryption = {
  kms_key : string prop option; [@option]
      (** The Cloud KMS CryptoKey e.g.
projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
to use for protecting control plane disks. If not specified, a
Google-managed key will be used instead. *)
}
[@@deriving yojson_of]
(** Remote control plane disk encryption options. This field is only used when
enabling CMEK support. *)

type fleet = {
  project : string prop;
      (** The name of the Fleet host project where this cluster will be registered.
Project names are formatted as
'projects/<project-number>'. *)
}
[@@deriving yojson_of]
(** Fleet related configuration.
Fleets are a Google Cloud concept for logically organizing clusters,
letting you use and manage multi-cluster capabilities and apply
consistent policies across your systems. *)

type maintenance_policy__window__recurring_window__window = {
  end_time : string prop option; [@option]
      (** The time that the window ends. The end time must take place after the
start time. *)
  start_time : string prop option; [@option]
      (** The time that the window first starts. *)
}
[@@deriving yojson_of]
(** Represents an arbitrary window of time. *)

type maintenance_policy__window__recurring_window = {
  recurrence : string prop option; [@option]
      (** An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how
this window recurs. They go on for the span of time between the start and
end time. *)
  window : maintenance_policy__window__recurring_window__window list;
}
[@@deriving yojson_of]
(** Represents an arbitrary window of time that recurs. *)

type maintenance_policy__window = {
  recurring_window :
    maintenance_policy__window__recurring_window list;
}
[@@deriving yojson_of]
(** Specifies the maintenance window in which maintenance may be performed. *)

type maintenance_policy = {
  window : maintenance_policy__window list;
}
[@@deriving yojson_of]
(** Cluster-wide maintenance policy configuration. *)

type networking = {
  cluster_ipv4_cidr_blocks : string prop list;
      (** All pods in the cluster are assigned an RFC1918 IPv4 address from these
blocks. Only a single block is supported. This field cannot be changed
after creation. *)
  cluster_ipv6_cidr_blocks : string prop list option; [@option]
      (** If specified, dual stack mode is enabled and all pods in the cluster are
assigned an IPv6 address from these blocks alongside from an IPv4
address. Only a single block is supported. This field cannot be changed
after creation. *)
  services_ipv4_cidr_blocks : string prop list;
      (** All services in the cluster are assigned an RFC1918 IPv4 address from these
blocks. Only a single block is supported. This field cannot be changed
after creation. *)
  services_ipv6_cidr_blocks : string prop list option; [@option]
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

type system_addons_config__ingress = {
  disabled : bool prop option; [@option]
      (** Whether Ingress is disabled. *)
  ipv4_vip : string prop option; [@option]  (** Ingress VIP. *)
}
[@@deriving yojson_of]
(** Config for the Ingress add-on which allows customers to create an Ingress
object to manage external access to the servers in a cluster. The add-on
consists of istiod and istio-ingress. *)

type system_addons_config = {
  ingress : system_addons_config__ingress list;
}
[@@deriving yojson_of]
(** Config that customers are allowed to define for GDCE system add-ons. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type maintenance_events = {
  create_time : string prop;  (** create_time *)
  end_time : string prop;  (** end_time *)
  operation : string prop;  (** operation *)
  schedule : string prop;  (** schedule *)
  start_time : string prop;  (** start_time *)
  state : string prop;  (** state *)
  target_version : string prop;  (** target_version *)
  type_ : string prop; [@key "type"]  (** type *)
  update_time : string prop;  (** update_time *)
  uuid : string prop;  (** uuid *)
}
[@@deriving yojson_of]

type google_edgecontainer_cluster = {
  default_max_pods_per_node : float prop option; [@option]
      (** The default maximum number of pods per node used if a maximum value is not
specified explicitly for a node pool in this cluster. If unspecified, the
Kubernetes default value will be used. *)
  external_load_balancer_ipv4_address_pools :
    string prop list option;
      [@option]
      (** Address pools for cluster data plane external load balancing. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-defined labels for the edgecloud cluster.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** The location of the resource. *)
  name : string prop;  (** The GDCE cluster name. *)
  project : string prop option; [@option]  (** project *)
  release_channel : string prop option; [@option]
      (** The release channel a cluster is subscribed to. Possible values: [RELEASE_CHANNEL_UNSPECIFIED, NONE, REGULAR] *)
  target_version : string prop option; [@option]
      (** The target cluster version. For example: 1.5.0. *)
  authorization : authorization list;
  control_plane : control_plane list;
  control_plane_encryption : control_plane_encryption list;
  fleet : fleet list;
  maintenance_policy : maintenance_policy list;
  networking : networking list;
  system_addons_config : system_addons_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_edgecontainer_cluster *)

let authorization__admin_users ~username () :
    authorization__admin_users =
  { username }

let authorization ~admin_users () : authorization = { admin_users }

let control_plane__local ?machine_filter ?node_count ?node_location
    ?shared_deployment_policy () : control_plane__local =
  {
    machine_filter;
    node_count;
    node_location;
    shared_deployment_policy;
  }

let control_plane__remote ?node_location () : control_plane__remote =
  { node_location }

let control_plane ~local ~remote () : control_plane =
  { local; remote }

let control_plane_encryption ?kms_key () : control_plane_encryption =
  { kms_key }

let fleet ~project () : fleet = { project }

let maintenance_policy__window__recurring_window__window ?end_time
    ?start_time () :
    maintenance_policy__window__recurring_window__window =
  { end_time; start_time }

let maintenance_policy__window__recurring_window ?recurrence ~window
    () : maintenance_policy__window__recurring_window =
  { recurrence; window }

let maintenance_policy__window ~recurring_window () :
    maintenance_policy__window =
  { recurring_window }

let maintenance_policy ~window () : maintenance_policy = { window }

let networking ?cluster_ipv6_cidr_blocks ?services_ipv6_cidr_blocks
    ~cluster_ipv4_cidr_blocks ~services_ipv4_cidr_blocks () :
    networking =
  {
    cluster_ipv4_cidr_blocks;
    cluster_ipv6_cidr_blocks;
    services_ipv4_cidr_blocks;
    services_ipv6_cidr_blocks;
  }

let system_addons_config__ingress ?disabled ?ipv4_vip () :
    system_addons_config__ingress =
  { disabled; ipv4_vip }

let system_addons_config ~ingress () : system_addons_config =
  { ingress }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_edgecontainer_cluster ?default_max_pods_per_node
    ?external_load_balancer_ipv4_address_pools ?id ?labels ?project
    ?release_channel ?target_version ?timeouts ~location ~name
    ~authorization ~control_plane ~control_plane_encryption ~fleet
    ~maintenance_policy ~networking ~system_addons_config () :
    google_edgecontainer_cluster =
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

type t = {
  cluster_ca_certificate : string prop;
  control_plane_version : string prop;
  create_time : string prop;
  default_max_pods_per_node : float prop;
  effective_labels : (string * string) list prop;
  endpoint : string prop;
  external_load_balancer_ipv4_address_pools : string list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  maintenance_events : maintenance_events list prop;
  name : string prop;
  node_version : string prop;
  port : float prop;
  project : string prop;
  release_channel : string prop;
  status : string prop;
  target_version : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?default_max_pods_per_node
    ?external_load_balancer_ipv4_address_pools ?id ?labels ?project
    ?release_channel ?target_version ?timeouts ~location ~name
    ~authorization ~control_plane ~control_plane_encryption ~fleet
    ~maintenance_policy ~networking ~system_addons_config __id =
  let __type = "google_edgecontainer_cluster" in
  let __attrs =
    ({
       cluster_ca_certificate =
         Prop.computed __type __id "cluster_ca_certificate";
       control_plane_version =
         Prop.computed __type __id "control_plane_version";
       create_time = Prop.computed __type __id "create_time";
       default_max_pods_per_node =
         Prop.computed __type __id "default_max_pods_per_node";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       endpoint = Prop.computed __type __id "endpoint";
       external_load_balancer_ipv4_address_pools =
         Prop.computed __type __id
           "external_load_balancer_ipv4_address_pools";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       maintenance_events =
         Prop.computed __type __id "maintenance_events";
       name = Prop.computed __type __id "name";
       node_version = Prop.computed __type __id "node_version";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       release_channel = Prop.computed __type __id "release_channel";
       status = Prop.computed __type __id "status";
       target_version = Prop.computed __type __id "target_version";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_edgecontainer_cluster
        (google_edgecontainer_cluster ?default_max_pods_per_node
           ?external_load_balancer_ipv4_address_pools ?id ?labels
           ?project ?release_channel ?target_version ?timeouts
           ~location ~name ~authorization ~control_plane
           ~control_plane_encryption ~fleet ~maintenance_policy
           ~networking ~system_addons_config ());
    attrs = __attrs;
  }

let register ?tf_module ?default_max_pods_per_node
    ?external_load_balancer_ipv4_address_pools ?id ?labels ?project
    ?release_channel ?target_version ?timeouts ~location ~name
    ~authorization ~control_plane ~control_plane_encryption ~fleet
    ~maintenance_policy ~networking ~system_addons_config __id =
  let (r : _ Tf_core.resource) =
    make ?default_max_pods_per_node
      ?external_load_balancer_ipv4_address_pools ?id ?labels ?project
      ?release_channel ?target_version ?timeouts ~location ~name
      ~authorization ~control_plane ~control_plane_encryption ~fleet
      ~maintenance_policy ~networking ~system_addons_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
