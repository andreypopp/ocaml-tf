(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_attached_cluster__authorization = {
  admin_groups : string list option; [@option]
      (** Groups that can perform operations as a cluster admin. A managed
ClusterRoleBinding will be created to grant the 'cluster-admin' ClusterRole
to the groups. Up to ten admin groups can be provided.

For more info on RBAC, see
https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles *)
  admin_users : string list option; [@option]
      (** Users that can perform operations as a cluster admin. A managed
ClusterRoleBinding will be created to grant the 'cluster-admin' ClusterRole
to the users. Up to ten admin users can be provided.

For more info on RBAC, see
https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles *)
}
[@@deriving yojson_of]
(** Configuration related to the cluster RBAC settings. *)

type google_container_attached_cluster__binary_authorization = {
  evaluation_mode : string option; [@option]
      (** Configure Binary Authorization evaluation mode. Possible values: [DISABLED, PROJECT_SINGLETON_POLICY_ENFORCE] *)
}
[@@deriving yojson_of]
(** Binary Authorization configuration. *)

type google_container_attached_cluster__fleet = {
  membership : string;
      (** The name of the managed Hub Membership resource associated to this
cluster. Membership names are formatted as
projects/<project-number>/locations/global/membership/<cluster-id>. *)
  project : string;
      (** The number of the Fleet host project where this cluster will be registered. *)
}
[@@deriving yojson_of]
(** Fleet configuration. *)

type google_container_attached_cluster__logging_config__component_config = {
  enable_components : string list option; [@option]
      (** The components to be enabled. Possible values: [SYSTEM_COMPONENTS, WORKLOADS] *)
}
[@@deriving yojson_of]
(** The configuration of the logging components *)

type google_container_attached_cluster__logging_config = {
  component_config :
    google_container_attached_cluster__logging_config__component_config
    list;
}
[@@deriving yojson_of]
(** Logging configuration. *)

type google_container_attached_cluster__monitoring_config__managed_prometheus_config = {
  enabled : bool option; [@option]  (** Enable Managed Collection. *)
}
[@@deriving yojson_of]
(** Enable Google Cloud Managed Service for Prometheus in the cluster. *)

type google_container_attached_cluster__monitoring_config = {
  managed_prometheus_config :
    google_container_attached_cluster__monitoring_config__managed_prometheus_config
    list;
}
[@@deriving yojson_of]
(** Monitoring configuration. *)

type google_container_attached_cluster__oidc_config = {
  issuer_url : string;
      (** A JSON Web Token (JWT) issuer URI. 'issuer' must start with 'https://' *)
  jwks : string option; [@option]
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

type google_container_attached_cluster__proxy_config__kubernetes_secret = {
  name : string;
      (** Name of the kubernetes secret containing the proxy config. *)
  namespace : string;
      (** Namespace of the kubernetes secret containing the proxy config. *)
}
[@@deriving yojson_of]
(** The Kubernetes Secret resource that contains the HTTP(S) proxy configuration. *)

type google_container_attached_cluster__proxy_config = {
  kubernetes_secret :
    google_container_attached_cluster__proxy_config__kubernetes_secret
    list;
}
[@@deriving yojson_of]
(** Support for proxy configuration. *)

type google_container_attached_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_container_attached_cluster__timeouts *)

type google_container_attached_cluster__errors = {
  message : string;  (** message *)
}
[@@deriving yojson_of]

type google_container_attached_cluster__workload_identity_config = {
  identity_provider : string;  (** identity_provider *)
  issuer_uri : string;  (** issuer_uri *)
  workload_pool : string;  (** workload_pool *)
}
[@@deriving yojson_of]

type google_container_attached_cluster = {
  annotations : (string * string) list option; [@option]
      (** Optional. Annotations on the cluster. This field has the same
restrictions as Kubernetes annotations. The total size of all keys and
values combined is limited to 256k. Key can have 2 segments: prefix (optional)
and name (required), separated by a slash (/). Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  deletion_policy : string option; [@option]
      (** Policy to determine what flags to send on delete. *)
  description : string option; [@option]
      (** A human readable description of this attached cluster. Cannot be longer
than 255 UTF-8 encoded bytes. *)
  distribution : string;
      (** The Kubernetes distribution of the underlying attached cluster. Supported values:
eks, aks. *)
  location : string;  (** The location for the resource *)
  name : string;  (** The name of this resource. *)
  platform_version : string;
      (** The platform version for the cluster (e.g. '1.23.0-gke.1'). *)
  authorization :
    google_container_attached_cluster__authorization list;
  binary_authorization :
    google_container_attached_cluster__binary_authorization list;
  fleet : google_container_attached_cluster__fleet list;
  logging_config :
    google_container_attached_cluster__logging_config list;
  monitoring_config :
    google_container_attached_cluster__monitoring_config list;
  oidc_config : google_container_attached_cluster__oidc_config list;
  proxy_config :
    google_container_attached_cluster__proxy_config list;
  timeouts : google_container_attached_cluster__timeouts option;
}
[@@deriving yojson_of]
(** google_container_attached_cluster *)

let google_container_attached_cluster ?annotations ?deletion_policy
    ?description ?timeouts ~distribution ~location ~name
    ~platform_version ~authorization ~binary_authorization ~fleet
    ~logging_config ~monitoring_config ~oidc_config ~proxy_config
    __resource_id =
  let __resource_type = "google_container_attached_cluster" in
  let __resource =
    {
      annotations;
      deletion_policy;
      description;
      distribution;
      location;
      name;
      platform_version;
      authorization;
      binary_authorization;
      fleet;
      logging_config;
      monitoring_config;
      oidc_config;
      proxy_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_attached_cluster __resource);
  ()
