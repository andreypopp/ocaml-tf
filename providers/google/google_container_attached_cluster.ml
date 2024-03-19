(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type authorization = {
  admin_groups : string prop list option; [@option]
      (** Groups that can perform operations as a cluster admin. A managed
ClusterRoleBinding will be created to grant the 'cluster-admin' ClusterRole
to the groups. Up to ten admin groups can be provided.

For more info on RBAC, see
https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles *)
  admin_users : string prop list option; [@option]
      (** Users that can perform operations as a cluster admin. A managed
ClusterRoleBinding will be created to grant the 'cluster-admin' ClusterRole
to the users. Up to ten admin users can be provided.

For more info on RBAC, see
https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles *)
}
[@@deriving yojson_of]
(** Configuration related to the cluster RBAC settings. *)

type binary_authorization = {
  evaluation_mode : string prop option; [@option]
      (** Configure Binary Authorization evaluation mode. Possible values: [DISABLED, PROJECT_SINGLETON_POLICY_ENFORCE] *)
}
[@@deriving yojson_of]
(** Binary Authorization configuration. *)

type fleet = {
  project : string prop;
      (** The number of the Fleet host project where this cluster will be registered. *)
}
[@@deriving yojson_of]
(** Fleet configuration. *)

type logging_config__component_config = {
  enable_components : string prop list option; [@option]
      (** The components to be enabled. Possible values: [SYSTEM_COMPONENTS, WORKLOADS] *)
}
[@@deriving yojson_of]
(** The configuration of the logging components *)

type logging_config = {
  component_config : logging_config__component_config list;
}
[@@deriving yojson_of]
(** Logging configuration. *)

type monitoring_config__managed_prometheus_config = {
  enabled : bool prop option; [@option]
      (** Enable Managed Collection. *)
}
[@@deriving yojson_of]
(** Enable Google Cloud Managed Service for Prometheus in the cluster. *)

type monitoring_config = {
  managed_prometheus_config :
    monitoring_config__managed_prometheus_config list;
}
[@@deriving yojson_of]
(** Monitoring configuration. *)

type oidc_config = {
  issuer_url : string prop;
      (** A JSON Web Token (JWT) issuer URI. 'issuer' must start with 'https://' *)
  jwks : string prop option; [@option]
      (** OIDC verification keys in JWKS format (RFC 7517). *)
}
[@@deriving yojson_of]
(** OIDC discovery information of the target cluster.

Kubernetes Service Account (KSA) tokens are JWT tokens signed by the cluster
API server. This fields indicates how GCP services
validate KSA tokens in order to allow system workloads (such as GKE Connect
and telemetry agents) to authenticate back to GCP.

Both clusters with public and private issuer URLs are supported.
Clusters with public issuers only need to specify the 'issuer_url' field
while clusters with private issuers need to provide both
'issuer_url' and 'jwks'. *)

type proxy_config__kubernetes_secret = {
  name : string prop;
      (** Name of the kubernetes secret containing the proxy config. *)
  namespace : string prop;
      (** Namespace of the kubernetes secret containing the proxy config. *)
}
[@@deriving yojson_of]
(** The Kubernetes Secret resource that contains the HTTP(S) proxy configuration. *)

type proxy_config = {
  kubernetes_secret : proxy_config__kubernetes_secret list;
}
[@@deriving yojson_of]
(** Support for proxy configuration. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type errors = { message : string prop  (** message *) }
[@@deriving yojson_of]

type workload_identity_config = {
  identity_provider : string prop;  (** identity_provider *)
  issuer_uri : string prop;  (** issuer_uri *)
  workload_pool : string prop;  (** workload_pool *)
}
[@@deriving yojson_of]

type google_container_attached_cluster = {
  annotations : (string * string prop) list option; [@option]
      (** Optional. Annotations on the cluster. This field has the same
restrictions as Kubernetes annotations. The total size of all keys and
values combined is limited to 256k. Key can have 2 segments: prefix (optional)
and name (required), separated by a slash (/). Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  deletion_policy : string prop option; [@option]
      (** Policy to determine what flags to send on delete. *)
  description : string prop option; [@option]
      (** A human readable description of this attached cluster. Cannot be longer
than 255 UTF-8 encoded bytes. *)
  distribution : string prop;
      (** The Kubernetes distribution of the underlying attached cluster. Supported values:
eks, aks. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;  (** The name of this resource. *)
  platform_version : string prop;
      (** The platform version for the cluster (e.g. '1.23.0-gke.1'). *)
  project : string prop option; [@option]  (** project *)
  authorization : authorization list;
  binary_authorization : binary_authorization list;
  fleet : fleet list;
  logging_config : logging_config list;
  monitoring_config : monitoring_config list;
  oidc_config : oidc_config list;
  proxy_config : proxy_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_container_attached_cluster *)

let authorization ?admin_groups ?admin_users () : authorization =
  { admin_groups; admin_users }

let binary_authorization ?evaluation_mode () : binary_authorization =
  { evaluation_mode }

let fleet ~project () : fleet = { project }

let logging_config__component_config ?enable_components () :
    logging_config__component_config =
  { enable_components }

let logging_config ~component_config () : logging_config =
  { component_config }

let monitoring_config__managed_prometheus_config ?enabled () :
    monitoring_config__managed_prometheus_config =
  { enabled }

let monitoring_config ~managed_prometheus_config () :
    monitoring_config =
  { managed_prometheus_config }

let oidc_config ?jwks ~issuer_url () : oidc_config =
  { issuer_url; jwks }

let proxy_config__kubernetes_secret ~name ~namespace () :
    proxy_config__kubernetes_secret =
  { name; namespace }

let proxy_config ~kubernetes_secret () : proxy_config =
  { kubernetes_secret }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_container_attached_cluster ?annotations ?deletion_policy
    ?description ?id ?project ?timeouts ~distribution ~location ~name
    ~platform_version ~authorization ~binary_authorization ~fleet
    ~logging_config ~monitoring_config ~oidc_config ~proxy_config ()
    : google_container_attached_cluster =
  {
    annotations;
    deletion_policy;
    description;
    distribution;
    id;
    location;
    name;
    platform_version;
    project;
    authorization;
    binary_authorization;
    fleet;
    logging_config;
    monitoring_config;
    oidc_config;
    proxy_config;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  cluster_region : string prop;
  create_time : string prop;
  deletion_policy : string prop;
  description : string prop;
  distribution : string prop;
  effective_annotations : (string * string) list prop;
  errors : errors list prop;
  id : string prop;
  kubernetes_version : string prop;
  location : string prop;
  name : string prop;
  platform_version : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
  workload_identity_config : workload_identity_config list prop;
}

let register ?tf_module ?annotations ?deletion_policy ?description
    ?id ?project ?timeouts ~distribution ~location ~name
    ~platform_version ~authorization ~binary_authorization ~fleet
    ~logging_config ~monitoring_config ~oidc_config ~proxy_config
    __resource_id =
  let __resource_type = "google_container_attached_cluster" in
  let __resource =
    google_container_attached_cluster ?annotations ?deletion_policy
      ?description ?id ?project ?timeouts ~distribution ~location
      ~name ~platform_version ~authorization ~binary_authorization
      ~fleet ~logging_config ~monitoring_config ~oidc_config
      ~proxy_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_attached_cluster __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       cluster_region =
         Prop.computed __resource_type __resource_id "cluster_region";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       deletion_policy =
         Prop.computed __resource_type __resource_id
           "deletion_policy";
       description =
         Prop.computed __resource_type __resource_id "description";
       distribution =
         Prop.computed __resource_type __resource_id "distribution";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       errors = Prop.computed __resource_type __resource_id "errors";
       id = Prop.computed __resource_type __resource_id "id";
       kubernetes_version =
         Prop.computed __resource_type __resource_id
           "kubernetes_version";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       platform_version =
         Prop.computed __resource_type __resource_id
           "platform_version";
       project =
         Prop.computed __resource_type __resource_id "project";
       reconciling =
         Prop.computed __resource_type __resource_id "reconciling";
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
