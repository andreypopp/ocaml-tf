(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_feature_membership__configmanagement__binauthz = {
  enabled : bool prop option; [@option]
      (** Whether binauthz is enabled in this cluster. *)
}
[@@deriving yojson_of]
(** **DEPRECATED** Binauthz configuration for the cluster. This field will be ignored and should not be set. *)

type google_gke_hub_feature_membership__configmanagement__config_sync__git = {
  gcp_service_account_email : string prop option; [@option]
      (** The GCP Service Account Email used for auth when secretType is gcpServiceAccount. *)
  https_proxy : string prop option; [@option]
      (** URL for the HTTPS proxy to be used when communicating with the Git repo. *)
  policy_dir : string prop option; [@option]
      (** The path within the Git repository that represents the top level of the repo to sync. Default: the root directory of the repository. *)
  secret_type : string prop option; [@option]
      (** Type of secret configured for access to the Git repo. Must be one of ssh, cookiefile, gcenode, token, gcpserviceaccount or none. The validation of this is case-sensitive. *)
  sync_branch : string prop option; [@option]
      (** The branch of the repository to sync from. Default: master. *)
  sync_repo : string prop option; [@option]
      (** The URL of the Git repository to use as the source of truth. *)
  sync_rev : string prop option; [@option]
      (** Git revision (tag or hash) to check out. Default HEAD. *)
  sync_wait_secs : string prop option; [@option]
      (** Period in seconds between consecutive syncs. Default: 15. *)
}
[@@deriving yojson_of]
(** google_gke_hub_feature_membership__configmanagement__config_sync__git *)

type google_gke_hub_feature_membership__configmanagement__config_sync__oci = {
  gcp_service_account_email : string prop option; [@option]
      (** The GCP Service Account Email used for auth when secret_type is gcpserviceaccount.  *)
  policy_dir : string prop option; [@option]
      (** The absolute path of the directory that contains the local resources. Default: the root directory of the image. *)
  secret_type : string prop option; [@option]
      (** Type of secret configured for access to the OCI Image. Must be one of gcenode, gcpserviceaccount or none. The validation of this is case-sensitive. *)
  sync_repo : string prop option; [@option]
      (** The OCI image repository URL for the package to sync from. e.g. LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME. *)
  sync_wait_secs : string prop option; [@option]
      (** Period in seconds(int64 format) between consecutive syncs. Default: 15. *)
}
[@@deriving yojson_of]
(** google_gke_hub_feature_membership__configmanagement__config_sync__oci *)

type google_gke_hub_feature_membership__configmanagement__config_sync = {
  metrics_gcp_service_account_email : string prop option; [@option]
      (** The Email of the Google Cloud Service Account (GSA) used for exporting Config Sync metrics to Cloud Monitoring. The GSA should have the Monitoring Metric Writer(roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount `default` in the namespace `config-management-monitoring` should be bound to the GSA. *)
  prevent_drift : bool prop option; [@option]
      (** Set to true to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts. *)
  source_format : string prop option; [@option]
      (** Specifies whether the Config Sync Repo is in hierarchical or unstructured mode. *)
  git :
    google_gke_hub_feature_membership__configmanagement__config_sync__git
    list;
  oci :
    google_gke_hub_feature_membership__configmanagement__config_sync__oci
    list;
}
[@@deriving yojson_of]
(** Config Sync configuration for the cluster. *)

type google_gke_hub_feature_membership__configmanagement__hierarchy_controller = {
  enable_hierarchical_resource_quota : bool prop option; [@option]
      (** Whether hierarchical resource quota is enabled in this cluster. *)
  enable_pod_tree_labels : bool prop option; [@option]
      (** Whether pod tree labels are enabled in this cluster. *)
  enabled : bool prop option; [@option]
      (** Whether Hierarchy Controller is enabled in this cluster. *)
}
[@@deriving yojson_of]
(** Hierarchy Controller configuration for the cluster. *)

type google_gke_hub_feature_membership__configmanagement__policy_controller__monitoring = {
  backends : string prop list option; [@option]
      (**  Specifies the list of backends Policy Controller will export to. Specifying an empty value `[]` disables metrics export. *)
}
[@@deriving yojson_of]
(** Specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: [cloudmonitoring, prometheus]. Default: [cloudmonitoring, prometheus] *)

type google_gke_hub_feature_membership__configmanagement__policy_controller = {
  audit_interval_seconds : string prop option; [@option]
      (** Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether. *)
  enabled : bool prop option; [@option]
      (** Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect. *)
  exemptable_namespaces : string prop list option; [@option]
      (** The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster. *)
  log_denies_enabled : bool prop option; [@option]
      (** Logs all denies and dry run failures. *)
  mutation_enabled : bool prop option; [@option]
      (** Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller deployment will be deployed to the cluster. *)
  referential_rules_enabled : bool prop option; [@option]
      (** Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated. *)
  template_library_installed : bool prop option; [@option]
      (** Installs the default template library along with Policy Controller. *)
  monitoring :
    google_gke_hub_feature_membership__configmanagement__policy_controller__monitoring
    list;
}
[@@deriving yojson_of]
(** Policy Controller configuration for the cluster. *)

type google_gke_hub_feature_membership__configmanagement = {
  version : string prop option; [@option]
      (** Optional. Version of ACM to install. Defaults to the latest version. *)
  binauthz :
    google_gke_hub_feature_membership__configmanagement__binauthz
    list;
  config_sync :
    google_gke_hub_feature_membership__configmanagement__config_sync
    list;
  hierarchy_controller :
    google_gke_hub_feature_membership__configmanagement__hierarchy_controller
    list;
  policy_controller :
    google_gke_hub_feature_membership__configmanagement__policy_controller
    list;
}
[@@deriving yojson_of]
(** Config Management-specific spec. *)

type google_gke_hub_feature_membership__mesh = {
  control_plane : string prop option; [@option]
      (** **DEPRECATED** Whether to automatically manage Service Mesh control planes. Possible values: CONTROL_PLANE_MANAGEMENT_UNSPECIFIED, AUTOMATIC, MANUAL *)
  management : string prop option; [@option]
      (** Whether to automatically manage Service Mesh. Possible values: MANAGEMENT_UNSPECIFIED, MANAGEMENT_AUTOMATIC, MANAGEMENT_MANUAL *)
}
[@@deriving yojson_of]
(** Manage Mesh Features *)

type google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits = {
  cpu : string prop option; [@option]
      (** CPU requirement expressed in Kubernetes resource units. *)
  memory : string prop option; [@option]
      (** Memory requirement expressed in Kubernetes resource units. *)
}
[@@deriving yojson_of]
(** Limits describes the maximum amount of compute resources allowed for use by the running container. *)

type google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests = {
  cpu : string prop option; [@option]
      (** CPU requirement expressed in Kubernetes resource units. *)
  memory : string prop option; [@option]
      (** Memory requirement expressed in Kubernetes resource units. *)
}
[@@deriving yojson_of]
(** Requests describes the amount of compute resources reserved for the container by the kube-scheduler. *)

type google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__deployment_configs__container_resources = {
  limits :
    google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    list;
  requests :
    google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    list;
}
[@@deriving yojson_of]
(** Container resource requirements. *)

type google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations = {
  effect : string prop option; [@option]
      (** Matches a taint effect. *)
  key : string prop option; [@option]
      (** Matches a taint key (not necessarily unique). *)
  operator : string prop option; [@option]
      (** Matches a taint operator. *)
  value : string prop option; [@option]  (** Matches a taint value. *)
}
[@@deriving yojson_of]
(** Pod tolerations of node taints. *)

type google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__deployment_configs = {
  component_name : string prop;
      (** The name for the key in the map for which this object is mapped to in the API *)
  pod_affinity : string prop option; [@option]
      (** Pod affinity configuration. Possible values: AFFINITY_UNSPECIFIED, NO_AFFINITY, ANTI_AFFINITY *)
  replica_count : float prop option; [@option]
      (** Pod replica count. *)
  container_resources :
    google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    list;
  pod_tolerations :
    google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations
    list;
}
[@@deriving yojson_of]
(** Map of deployment configs to deployments (admission, audit, mutation). *)

type google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__monitoring = {
  backends : string prop list option; [@option]
      (**  Specifies the list of backends Policy Controller will export to. Specifying an empty value `[]` disables metrics export. *)
}
[@@deriving yojson_of]
(** Specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: [cloudmonitoring, prometheus]. Default: [cloudmonitoring, prometheus] *)

type google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__policy_content__bundles = {
  bundle_name : string prop;
      (** The name for the key in the map for which this object is mapped to in the API *)
  exempted_namespaces : string prop list option; [@option]
      (** The set of namespaces to be exempted from the bundle. *)
}
[@@deriving yojson_of]
(** map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint. *)

type google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__policy_content__template_library = {
  installation : string prop option; [@option]
      (** Configures the manner in which the template library is installed on the cluster. Possible values: INSTALLATION_UNSPECIFIED, NOT_INSTALLED, ALL *)
}
[@@deriving yojson_of]
(** Configures the installation of the Template Library. *)

type google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__policy_content = {
  bundles :
    google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__policy_content__bundles
    list;
  template_library :
    google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__policy_content__template_library
    list;
}
[@@deriving yojson_of]
(** Specifies the desired policy content on the cluster. *)

type google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config = {
  audit_interval_seconds : float prop option; [@option]
      (** Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether. *)
  constraint_violation_limit : float prop option; [@option]
      (** The maximum number of audit violations to be stored in a constraint. If not set, the internal default of 20 will be used. *)
  exemptable_namespaces : string prop list option; [@option]
      (** The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster. *)
  install_spec : string prop option; [@option]
      (** Configures the mode of the Policy Controller installation. Possible values: INSTALL_SPEC_UNSPECIFIED, INSTALL_SPEC_NOT_INSTALLED, INSTALL_SPEC_ENABLED, INSTALL_SPEC_SUSPENDED, INSTALL_SPEC_DETACHED *)
  log_denies_enabled : bool prop option; [@option]
      (** Logs all denies and dry run failures. *)
  mutation_enabled : bool prop option; [@option]
      (** Enables the ability to mutate resources using Policy Controller. *)
  referential_rules_enabled : bool prop option; [@option]
      (** Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated. *)
  deployment_configs :
    google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__deployment_configs
    list;
  monitoring :
    google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__monitoring
    list;
  policy_content :
    google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config__policy_content
    list;
}
[@@deriving yojson_of]
(** Policy Controller configuration for the cluster. *)

type google_gke_hub_feature_membership__policycontroller = {
  version : string prop option; [@option]
      (** Optional. Version of Policy Controller to install. Defaults to the latest version. *)
  policy_controller_hub_config :
    google_gke_hub_feature_membership__policycontroller__policy_controller_hub_config
    list;
}
[@@deriving yojson_of]
(** Policy Controller-specific spec. *)

type google_gke_hub_feature_membership__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_hub_feature_membership__timeouts *)

type google_gke_hub_feature_membership = {
  feature : string prop;  (** The name of the feature *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the feature *)
  membership : string prop;  (** The name of the membership *)
  membership_location : string prop option; [@option]
      (** The location of the membership *)
  project : string prop option; [@option]
      (** The project of the feature *)
  configmanagement :
    google_gke_hub_feature_membership__configmanagement list;
  mesh : google_gke_hub_feature_membership__mesh list;
  policycontroller :
    google_gke_hub_feature_membership__policycontroller list;
  timeouts : google_gke_hub_feature_membership__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_feature_membership *)

let google_gke_hub_feature_membership ?id ?membership_location
    ?project ?timeouts ~feature ~location ~membership
    ~configmanagement ~mesh ~policycontroller __resource_id =
  let __resource_type = "google_gke_hub_feature_membership" in
  let __resource =
    {
      feature;
      id;
      location;
      membership;
      membership_location;
      project;
      configmanagement;
      mesh;
      policycontroller;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_feature_membership __resource);
  ()
