(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configmanagement__binauthz = {
  enabled : bool prop option; [@option]
      (** Whether binauthz is enabled in this cluster. *)
}
[@@deriving yojson_of]
(** **DEPRECATED** Binauthz configuration for the cluster. This field will be ignored and should not be set. *)

type configmanagement__config_sync__git = {
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
(** configmanagement__config_sync__git *)

type configmanagement__config_sync__oci = {
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
(** configmanagement__config_sync__oci *)

type configmanagement__config_sync = {
  metrics_gcp_service_account_email : string prop option; [@option]
      (** The Email of the Google Cloud Service Account (GSA) used for exporting Config Sync metrics to Cloud Monitoring. The GSA should have the Monitoring Metric Writer(roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount `default` in the namespace `config-management-monitoring` should be bound to the GSA. *)
  prevent_drift : bool prop option; [@option]
      (** Set to true to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts. *)
  source_format : string prop option; [@option]
      (** Specifies whether the Config Sync Repo is in hierarchical or unstructured mode. *)
  git : configmanagement__config_sync__git list;
  oci : configmanagement__config_sync__oci list;
}
[@@deriving yojson_of]
(** Config Sync configuration for the cluster. *)

type configmanagement__hierarchy_controller = {
  enable_hierarchical_resource_quota : bool prop option; [@option]
      (** Whether hierarchical resource quota is enabled in this cluster. *)
  enable_pod_tree_labels : bool prop option; [@option]
      (** Whether pod tree labels are enabled in this cluster. *)
  enabled : bool prop option; [@option]
      (** Whether Hierarchy Controller is enabled in this cluster. *)
}
[@@deriving yojson_of]
(** Hierarchy Controller configuration for the cluster. *)

type configmanagement__policy_controller__monitoring = {
  backends : string prop list option; [@option]
      (**  Specifies the list of backends Policy Controller will export to. Specifying an empty value `[]` disables metrics export. *)
}
[@@deriving yojson_of]
(** Specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: [cloudmonitoring, prometheus]. Default: [cloudmonitoring, prometheus] *)

type configmanagement__policy_controller = {
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
  monitoring : configmanagement__policy_controller__monitoring list;
}
[@@deriving yojson_of]
(** Policy Controller configuration for the cluster. *)

type configmanagement = {
  version : string prop option; [@option]
      (** Optional. Version of ACM to install. Defaults to the latest version. *)
  binauthz : configmanagement__binauthz list;
  config_sync : configmanagement__config_sync list;
  hierarchy_controller : configmanagement__hierarchy_controller list;
  policy_controller : configmanagement__policy_controller list;
}
[@@deriving yojson_of]
(** Config Management-specific spec. *)

type mesh = {
  control_plane : string prop option; [@option]
      (** **DEPRECATED** Whether to automatically manage Service Mesh control planes. Possible values: CONTROL_PLANE_MANAGEMENT_UNSPECIFIED, AUTOMATIC, MANUAL *)
  management : string prop option; [@option]
      (** Whether to automatically manage Service Mesh. Possible values: MANAGEMENT_UNSPECIFIED, MANAGEMENT_AUTOMATIC, MANAGEMENT_MANUAL *)
}
[@@deriving yojson_of]
(** Manage Mesh Features *)

type policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits = {
  cpu : string prop option; [@option]
      (** CPU requirement expressed in Kubernetes resource units. *)
  memory : string prop option; [@option]
      (** Memory requirement expressed in Kubernetes resource units. *)
}
[@@deriving yojson_of]
(** Limits describes the maximum amount of compute resources allowed for use by the running container. *)

type policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests = {
  cpu : string prop option; [@option]
      (** CPU requirement expressed in Kubernetes resource units. *)
  memory : string prop option; [@option]
      (** Memory requirement expressed in Kubernetes resource units. *)
}
[@@deriving yojson_of]
(** Requests describes the amount of compute resources reserved for the container by the kube-scheduler. *)

type policycontroller__policy_controller_hub_config__deployment_configs__container_resources = {
  limits :
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    list;
  requests :
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    list;
}
[@@deriving yojson_of]
(** Container resource requirements. *)

type policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations = {
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

type policycontroller__policy_controller_hub_config__deployment_configs = {
  component_name : string prop;
      (** The name for the key in the map for which this object is mapped to in the API *)
  pod_affinity : string prop option; [@option]
      (** Pod affinity configuration. Possible values: AFFINITY_UNSPECIFIED, NO_AFFINITY, ANTI_AFFINITY *)
  replica_count : float prop option; [@option]
      (** Pod replica count. *)
  container_resources :
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    list;
  pod_tolerations :
    policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations
    list;
}
[@@deriving yojson_of]
(** Map of deployment configs to deployments (admission, audit, mutation). *)

type policycontroller__policy_controller_hub_config__monitoring = {
  backends : string prop list option; [@option]
      (**  Specifies the list of backends Policy Controller will export to. Specifying an empty value `[]` disables metrics export. *)
}
[@@deriving yojson_of]
(** Specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: [cloudmonitoring, prometheus]. Default: [cloudmonitoring, prometheus] *)

type policycontroller__policy_controller_hub_config__policy_content__bundles = {
  bundle_name : string prop;
      (** The name for the key in the map for which this object is mapped to in the API *)
  exempted_namespaces : string prop list option; [@option]
      (** The set of namespaces to be exempted from the bundle. *)
}
[@@deriving yojson_of]
(** map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint. *)

type policycontroller__policy_controller_hub_config__policy_content__template_library = {
  installation : string prop option; [@option]
      (** Configures the manner in which the template library is installed on the cluster. Possible values: INSTALLATION_UNSPECIFIED, NOT_INSTALLED, ALL *)
}
[@@deriving yojson_of]
(** Configures the installation of the Template Library. *)

type policycontroller__policy_controller_hub_config__policy_content = {
  bundles :
    policycontroller__policy_controller_hub_config__policy_content__bundles
    list;
  template_library :
    policycontroller__policy_controller_hub_config__policy_content__template_library
    list;
}
[@@deriving yojson_of]
(** Specifies the desired policy content on the cluster. *)

type policycontroller__policy_controller_hub_config = {
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
    policycontroller__policy_controller_hub_config__deployment_configs
    list;
  monitoring :
    policycontroller__policy_controller_hub_config__monitoring list;
  policy_content :
    policycontroller__policy_controller_hub_config__policy_content
    list;
}
[@@deriving yojson_of]
(** Policy Controller configuration for the cluster. *)

type policycontroller = {
  version : string prop option; [@option]
      (** Optional. Version of Policy Controller to install. Defaults to the latest version. *)
  policy_controller_hub_config :
    policycontroller__policy_controller_hub_config list;
}
[@@deriving yojson_of]
(** Policy Controller-specific spec. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_gke_hub_feature_membership = {
  feature : string prop;  (** The name of the feature *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the feature *)
  membership : string prop;  (** The name of the membership *)
  membership_location : string prop option; [@option]
      (** The location of the membership *)
  project : string prop option; [@option]
      (** The project of the feature *)
  configmanagement : configmanagement list;
  mesh : mesh list;
  policycontroller : policycontroller list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_feature_membership *)

let configmanagement__binauthz ?enabled () :
    configmanagement__binauthz =
  { enabled }

let configmanagement__config_sync__git ?gcp_service_account_email
    ?https_proxy ?policy_dir ?secret_type ?sync_branch ?sync_repo
    ?sync_rev ?sync_wait_secs () : configmanagement__config_sync__git
    =
  {
    gcp_service_account_email;
    https_proxy;
    policy_dir;
    secret_type;
    sync_branch;
    sync_repo;
    sync_rev;
    sync_wait_secs;
  }

let configmanagement__config_sync__oci ?gcp_service_account_email
    ?policy_dir ?secret_type ?sync_repo ?sync_wait_secs () :
    configmanagement__config_sync__oci =
  {
    gcp_service_account_email;
    policy_dir;
    secret_type;
    sync_repo;
    sync_wait_secs;
  }

let configmanagement__config_sync ?metrics_gcp_service_account_email
    ?prevent_drift ?source_format ~git ~oci () :
    configmanagement__config_sync =
  {
    metrics_gcp_service_account_email;
    prevent_drift;
    source_format;
    git;
    oci;
  }

let configmanagement__hierarchy_controller
    ?enable_hierarchical_resource_quota ?enable_pod_tree_labels
    ?enabled () : configmanagement__hierarchy_controller =
  {
    enable_hierarchical_resource_quota;
    enable_pod_tree_labels;
    enabled;
  }

let configmanagement__policy_controller__monitoring ?backends () :
    configmanagement__policy_controller__monitoring =
  { backends }

let configmanagement__policy_controller ?audit_interval_seconds
    ?enabled ?exemptable_namespaces ?log_denies_enabled
    ?mutation_enabled ?referential_rules_enabled
    ?template_library_installed ~monitoring () :
    configmanagement__policy_controller =
  {
    audit_interval_seconds;
    enabled;
    exemptable_namespaces;
    log_denies_enabled;
    mutation_enabled;
    referential_rules_enabled;
    template_library_installed;
    monitoring;
  }

let configmanagement ?version ~binauthz ~config_sync
    ~hierarchy_controller ~policy_controller () : configmanagement =
  {
    version;
    binauthz;
    config_sync;
    hierarchy_controller;
    policy_controller;
  }

let mesh ?control_plane ?management () : mesh =
  { control_plane; management }

let policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    ?cpu ?memory () :
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    =
  { cpu; memory }

let policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    ?cpu ?memory () :
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    =
  { cpu; memory }

let policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    ~limits ~requests () :
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    =
  { limits; requests }

let policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations
    ?effect ?key ?operator ?value () :
    policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations
    =
  { effect; key; operator; value }

let policycontroller__policy_controller_hub_config__deployment_configs
    ?pod_affinity ?replica_count ~component_name ~container_resources
    ~pod_tolerations () :
    policycontroller__policy_controller_hub_config__deployment_configs
    =
  {
    component_name;
    pod_affinity;
    replica_count;
    container_resources;
    pod_tolerations;
  }

let policycontroller__policy_controller_hub_config__monitoring
    ?backends () :
    policycontroller__policy_controller_hub_config__monitoring =
  { backends }

let policycontroller__policy_controller_hub_config__policy_content__bundles
    ?exempted_namespaces ~bundle_name () :
    policycontroller__policy_controller_hub_config__policy_content__bundles
    =
  { bundle_name; exempted_namespaces }

let policycontroller__policy_controller_hub_config__policy_content__template_library
    ?installation () :
    policycontroller__policy_controller_hub_config__policy_content__template_library
    =
  { installation }

let policycontroller__policy_controller_hub_config__policy_content
    ~bundles ~template_library () :
    policycontroller__policy_controller_hub_config__policy_content =
  { bundles; template_library }

let policycontroller__policy_controller_hub_config
    ?audit_interval_seconds ?constraint_violation_limit
    ?exemptable_namespaces ?install_spec ?log_denies_enabled
    ?mutation_enabled ?referential_rules_enabled ~deployment_configs
    ~monitoring ~policy_content () :
    policycontroller__policy_controller_hub_config =
  {
    audit_interval_seconds;
    constraint_violation_limit;
    exemptable_namespaces;
    install_spec;
    log_denies_enabled;
    mutation_enabled;
    referential_rules_enabled;
    deployment_configs;
    monitoring;
    policy_content;
  }

let policycontroller ?version ~policy_controller_hub_config () :
    policycontroller =
  { version; policy_controller_hub_config }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_feature_membership ?id ?membership_location
    ?project ?timeouts ~feature ~location ~membership
    ~configmanagement ~mesh ~policycontroller () :
    google_gke_hub_feature_membership =
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

type t = {
  feature : string prop;
  id : string prop;
  location : string prop;
  membership : string prop;
  membership_location : string prop;
  project : string prop;
}

let make ?id ?membership_location ?project ?timeouts ~feature
    ~location ~membership ~configmanagement ~mesh ~policycontroller
    __id =
  let __type = "google_gke_hub_feature_membership" in
  let __attrs =
    ({
       feature = Prop.computed __type __id "feature";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       membership = Prop.computed __type __id "membership";
       membership_location =
         Prop.computed __type __id "membership_location";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_feature_membership
        (google_gke_hub_feature_membership ?id ?membership_location
           ?project ?timeouts ~feature ~location ~membership
           ~configmanagement ~mesh ~policycontroller ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?membership_location ?project ?timeouts
    ~feature ~location ~membership ~configmanagement ~mesh
    ~policycontroller __id =
  let (r : _ Tf_core.resource) =
    make ?id ?membership_location ?project ?timeouts ~feature
      ~location ~membership ~configmanagement ~mesh ~policycontroller
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
