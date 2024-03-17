(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_feature__fleet_default_member_config__configmanagement__config_sync__git = {
  gcp_service_account_email : string option; [@option]
      (** The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount *)
  https_proxy : string option; [@option]
      (** URL for the HTTPS Proxy to be used when communicating with the Git repo *)
  policy_dir : string option; [@option]
      (** The path within the Git repository that represents the top level of the repo to sync *)
  secret_type : string;
      (** Type of secret configured for access to the Git repo *)
  sync_branch : string option; [@option]
      (** The branch of the repository to sync from. Default: master *)
  sync_repo : string option; [@option]
      (** The URL of the Git repository to use as the source of truth *)
  sync_rev : string option; [@option]
      (** Git revision (tag or hash) to check out. Default HEAD *)
  sync_wait_secs : string option; [@option]
      (** Period in seconds between consecutive syncs. Default: 15 *)
}
[@@deriving yojson_of]
(** Git repo configuration for the cluster *)

type google_gke_hub_feature__fleet_default_member_config__configmanagement__config_sync__oci = {
  gcp_service_account_email : string option; [@option]
      (** The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount *)
  policy_dir : string option; [@option]
      (** The absolute path of the directory that contains the local resources. Default: the root directory of the image *)
  secret_type : string;
      (** Type of secret configured for access to the Git repo *)
  sync_repo : string option; [@option]
      (** The OCI image repository URL for the package to sync from *)
  sync_wait_secs : string option; [@option]
      (** Period in seconds between consecutive syncs. Default: 15 *)
  version : string option; [@option]  (** Version of ACM installed *)
}
[@@deriving yojson_of]
(** OCI repo configuration for the cluster *)

type google_gke_hub_feature__fleet_default_member_config__configmanagement__config_sync = {
  source_format : string option; [@option]
      (** Specifies whether the Config Sync Repo is in hierarchical or unstructured mode *)
  git :
    google_gke_hub_feature__fleet_default_member_config__configmanagement__config_sync__git
    list;
  oci :
    google_gke_hub_feature__fleet_default_member_config__configmanagement__config_sync__oci
    list;
}
[@@deriving yojson_of]
(** ConfigSync configuration for the cluster *)

type google_gke_hub_feature__fleet_default_member_config__configmanagement = {
  version : string option; [@option]  (** Version of ACM installed *)
  config_sync :
    google_gke_hub_feature__fleet_default_member_config__configmanagement__config_sync
    list;
}
[@@deriving yojson_of]
(** Config Management spec *)

type google_gke_hub_feature__fleet_default_member_config__mesh = {
  management : string;
      (** Whether to automatically manage Service Mesh Possible values: [MANAGEMENT_UNSPECIFIED, MANAGEMENT_AUTOMATIC, MANAGEMENT_MANUAL] *)
}
[@@deriving yojson_of]
(** Service Mesh spec *)

type google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits = {
  cpu : string option; [@option]
      (** CPU requirement expressed in Kubernetes resource units. *)
  memory : string option; [@option]
      (** Memory requirement expressed in Kubernetes resource units. *)
}
[@@deriving yojson_of]
(** Limits describes the maximum amount of compute resources allowed for use by the running container. *)

type google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests = {
  cpu : string option; [@option]
      (** CPU requirement expressed in Kubernetes resource units. *)
  memory : string option; [@option]
      (** Memory requirement expressed in Kubernetes resource units. *)
}
[@@deriving yojson_of]
(** Requests describes the amount of compute resources reserved for the container by the kube-scheduler. *)

type google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources = {
  limits :
    google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    list;
  requests :
    google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    list;
}
[@@deriving yojson_of]
(** Container resource requirements. *)

type google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration = {
  effect : string option; [@option]  (** Matches a taint effect. *)
  key : string option; [@option]
      (** Matches a taint key (not necessarily unique). *)
  operator : string option; [@option]
      (** Matches a taint operator. *)
  value : string option; [@option]  (** Matches a taint value. *)
}
[@@deriving yojson_of]
(** Pod tolerations of node taints. *)

type google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs = {
  component : string;  (** component *)
  pod_affinity : string option; [@option]
      (** Pod affinity configuration. Possible values: [AFFINITY_UNSPECIFIED, NO_AFFINITY, ANTI_AFFINITY] *)
  replica_count : float option; [@option]  (** Pod replica count. *)
  container_resources :
    google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    list;
  pod_toleration :
    google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration
    list;
}
[@@deriving yojson_of]
(** Map of deployment configs to deployments (admission, audit, mutation). *)

type google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring = {
  backends : string list option; [@option]
      (** Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export. Possible values: [MONITORING_BACKEND_UNSPECIFIED, PROMETHEUS, CLOUD_MONITORING] *)
}
[@@deriving yojson_of]
(** Monitoring specifies the configuration of monitoring Policy Controller. *)

type google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles = {
  bundle : string;  (** bundle *)
  exempted_namespaces : string list option; [@option]
      (** The set of namespaces to be exempted from the bundle. *)
}
[@@deriving yojson_of]
(** Configures which bundles to install and their corresponding install specs. *)

type google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library = {
  installation : string option; [@option]
      (** Configures the manner in which the template library is installed on the cluster. Possible values: [INSTALATION_UNSPECIFIED, NOT_INSTALLED, ALL] *)
}
[@@deriving yojson_of]
(** Configures the installation of the Template Library. *)

type google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content = {
  bundles :
    google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles
    list;
  template_library :
    google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library
    list;
}
[@@deriving yojson_of]
(** Specifies the desired policy content on the cluster. *)

type google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config = {
  audit_interval_seconds : float option; [@option]
      (** Interval for Policy Controller Audit scans (in seconds). When set to 0, this disables audit functionality altogether. *)
  constraint_violation_limit : float option; [@option]
      (** The maximum number of audit violations to be stored in a constraint. If not set, the internal default of 20 will be used. *)
  exemptable_namespaces : string list option; [@option]
      (** The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster. *)
  install_spec : string;
      (** Configures the mode of the Policy Controller installation Possible values: [INSTALL_SPEC_UNSPECIFIED, INSTALL_SPEC_NOT_INSTALLED, INSTALL_SPEC_ENABLED, INSTALL_SPEC_SUSPENDED, INSTALL_SPEC_DETACHED] *)
  log_denies_enabled : bool option; [@option]
      (** Logs all denies and dry run failures. *)
  mutation_enabled : bool option; [@option]
      (** Enables the ability to mutate resources using Policy Controller. *)
  referential_rules_enabled : bool option; [@option]
      (** Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated. *)
  deployment_configs :
    google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs
    list;
  monitoring :
    google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring
    list;
  policy_content :
    google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content
    list;
}
[@@deriving yojson_of]
(** Configuration of Policy Controller *)

type google_gke_hub_feature__fleet_default_member_config__policycontroller = {
  version : string option; [@option]
      (** Configures the version of Policy Controller *)
  policy_controller_hub_config :
    google_gke_hub_feature__fleet_default_member_config__policycontroller__policy_controller_hub_config
    list;
}
[@@deriving yojson_of]
(** Policy Controller spec *)

type google_gke_hub_feature__fleet_default_member_config = {
  configmanagement :
    google_gke_hub_feature__fleet_default_member_config__configmanagement
    list;
  mesh :
    google_gke_hub_feature__fleet_default_member_config__mesh list;
  policycontroller :
    google_gke_hub_feature__fleet_default_member_config__policycontroller
    list;
}
[@@deriving yojson_of]
(** Optional. Fleet Default Membership Configuration. *)

type google_gke_hub_feature__spec__clusterupgrade__gke_upgrade_overrides__post_conditions = {
  soaking : string;
      (** Amount of time to soak after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. *)
}
[@@deriving yojson_of]
(** Post conditions to override for the specified upgrade. *)

type google_gke_hub_feature__spec__clusterupgrade__gke_upgrade_overrides__upgrade = {
  name : string;
      (** Name of the upgrade, e.g., k8s_control_plane. It should be a valid upgrade name. It must not exceet 99 characters. *)
  version : string;
      (** Version of the upgrade, e.g., 1.22.1-gke.100. It should be a valid version. It must not exceet 99 characters. *)
}
[@@deriving yojson_of]
(** Which upgrade to override. *)

type google_gke_hub_feature__spec__clusterupgrade__gke_upgrade_overrides = {
  post_conditions :
    google_gke_hub_feature__spec__clusterupgrade__gke_upgrade_overrides__post_conditions
    list;
  upgrade :
    google_gke_hub_feature__spec__clusterupgrade__gke_upgrade_overrides__upgrade
    list;
}
[@@deriving yojson_of]
(** Configuration overrides for individual upgrades. *)

type google_gke_hub_feature__spec__clusterupgrade__post_conditions = {
  soaking : string;
      (** Amount of time to soak after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. *)
}
[@@deriving yojson_of]
(** Post conditions to override for the specified upgrade. *)

type google_gke_hub_feature__spec__clusterupgrade = {
  upstream_fleets : string list;
      (** Specified if other fleet should be considered as a source of upgrades. Currently, at most one upstream fleet is allowed. The fleet name should be either fleet project number or id. *)
  gke_upgrade_overrides :
    google_gke_hub_feature__spec__clusterupgrade__gke_upgrade_overrides
    list;
  post_conditions :
    google_gke_hub_feature__spec__clusterupgrade__post_conditions
    list;
}
[@@deriving yojson_of]
(** Clusterupgrade feature spec. *)

type google_gke_hub_feature__spec__fleetobservability__logging_config__default_config = {
  mode : string option; [@option]
      (** Specified if fleet logging feature is enabled. Possible values: [MODE_UNSPECIFIED, COPY, MOVE] *)
}
[@@deriving yojson_of]
(** Specified if applying the default routing config to logs not specified in other configs. *)

type google_gke_hub_feature__spec__fleetobservability__logging_config__fleet_scope_logs_config = {
  mode : string option; [@option]
      (** Specified if fleet logging feature is enabled. Possible values: [MODE_UNSPECIFIED, COPY, MOVE] *)
}
[@@deriving yojson_of]
(** Specified if applying the routing config to all logs for all fleet scopes. *)

type google_gke_hub_feature__spec__fleetobservability__logging_config = {
  default_config :
    google_gke_hub_feature__spec__fleetobservability__logging_config__default_config
    list;
  fleet_scope_logs_config :
    google_gke_hub_feature__spec__fleetobservability__logging_config__fleet_scope_logs_config
    list;
}
[@@deriving yojson_of]
(** Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet. *)

type google_gke_hub_feature__spec__fleetobservability = {
  logging_config :
    google_gke_hub_feature__spec__fleetobservability__logging_config
    list;
}
[@@deriving yojson_of]
(** Fleet Observability feature spec. *)

type google_gke_hub_feature__spec__multiclusteringress = {
  config_membership : string;
      (** Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: 'projects/foo-proj/locations/global/memberships/bar' *)
}
[@@deriving yojson_of]
(** Multicluster Ingress-specific spec. *)

type google_gke_hub_feature__spec = {
  clusterupgrade : google_gke_hub_feature__spec__clusterupgrade list;
  fleetobservability :
    google_gke_hub_feature__spec__fleetobservability list;
  multiclusteringress :
    google_gke_hub_feature__spec__multiclusteringress list;
}
[@@deriving yojson_of]
(** Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused. *)

type google_gke_hub_feature__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_hub_feature__timeouts *)

type google_gke_hub_feature__resource_state = {
  has_resources : bool;  (** has_resources *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type google_gke_hub_feature__state__state = {
  code : string;  (** code *)
  description : string;  (** description *)
  update_time : string;  (** update_time *)
}
[@@deriving yojson_of]

type google_gke_hub_feature__state = {
  state : google_gke_hub_feature__state__state list;  (** state *)
}
[@@deriving yojson_of]

type google_gke_hub_feature = {
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** GCP labels for this Feature.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** The location for the resource *)
  name : string option; [@option]
      (** The full, unique name of this Feature resource *)
  project : string option; [@option]  (** project *)
  fleet_default_member_config :
    google_gke_hub_feature__fleet_default_member_config list;
  spec : google_gke_hub_feature__spec list;
  timeouts : google_gke_hub_feature__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_feature *)

let google_gke_hub_feature ?id ?labels ?name ?project ?timeouts
    ~location ~fleet_default_member_config ~spec __resource_id =
  let __resource_type = "google_gke_hub_feature" in
  let __resource =
    {
      id;
      labels;
      location;
      name;
      project;
      fleet_default_member_config;
      spec;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_feature __resource);
  ()
