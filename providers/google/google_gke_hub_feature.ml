(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type fleet_default_member_config__configmanagement__config_sync__git = {
  gcp_service_account_email : string prop option; [@option]
      (** The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount *)
  https_proxy : string prop option; [@option]
      (** URL for the HTTPS Proxy to be used when communicating with the Git repo *)
  policy_dir : string prop option; [@option]
      (** The path within the Git repository that represents the top level of the repo to sync *)
  secret_type : string prop;
      (** Type of secret configured for access to the Git repo *)
  sync_branch : string prop option; [@option]
      (** The branch of the repository to sync from. Default: master *)
  sync_repo : string prop option; [@option]
      (** The URL of the Git repository to use as the source of truth *)
  sync_rev : string prop option; [@option]
      (** Git revision (tag or hash) to check out. Default HEAD *)
  sync_wait_secs : string prop option; [@option]
      (** Period in seconds between consecutive syncs. Default: 15 *)
}
[@@deriving yojson_of]
(** Git repo configuration for the cluster *)

type fleet_default_member_config__configmanagement__config_sync__oci = {
  gcp_service_account_email : string prop option; [@option]
      (** The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount *)
  policy_dir : string prop option; [@option]
      (** The absolute path of the directory that contains the local resources. Default: the root directory of the image *)
  secret_type : string prop;
      (** Type of secret configured for access to the Git repo *)
  sync_repo : string prop option; [@option]
      (** The OCI image repository URL for the package to sync from *)
  sync_wait_secs : string prop option; [@option]
      (** Period in seconds between consecutive syncs. Default: 15 *)
  version : string prop option; [@option]
      (** Version of ACM installed *)
}
[@@deriving yojson_of]
(** OCI repo configuration for the cluster *)

type fleet_default_member_config__configmanagement__config_sync = {
  source_format : string prop option; [@option]
      (** Specifies whether the Config Sync Repo is in hierarchical or unstructured mode *)
  git :
    fleet_default_member_config__configmanagement__config_sync__git
    list;
  oci :
    fleet_default_member_config__configmanagement__config_sync__oci
    list;
}
[@@deriving yojson_of]
(** ConfigSync configuration for the cluster *)

type fleet_default_member_config__configmanagement = {
  version : string prop option; [@option]
      (** Version of ACM installed *)
  config_sync :
    fleet_default_member_config__configmanagement__config_sync list;
}
[@@deriving yojson_of]
(** Config Management spec *)

type fleet_default_member_config__mesh = {
  management : string prop;
      (** Whether to automatically manage Service Mesh Possible values: [MANAGEMENT_UNSPECIFIED, MANAGEMENT_AUTOMATIC, MANAGEMENT_MANUAL] *)
}
[@@deriving yojson_of]
(** Service Mesh spec *)

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits = {
  cpu : string prop option; [@option]
      (** CPU requirement expressed in Kubernetes resource units. *)
  memory : string prop option; [@option]
      (** Memory requirement expressed in Kubernetes resource units. *)
}
[@@deriving yojson_of]
(** Limits describes the maximum amount of compute resources allowed for use by the running container. *)

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests = {
  cpu : string prop option; [@option]
      (** CPU requirement expressed in Kubernetes resource units. *)
  memory : string prop option; [@option]
      (** Memory requirement expressed in Kubernetes resource units. *)
}
[@@deriving yojson_of]
(** Requests describes the amount of compute resources reserved for the container by the kube-scheduler. *)

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources = {
  limits :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    list;
  requests :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    list;
}
[@@deriving yojson_of]
(** Container resource requirements. *)

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration = {
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

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs = {
  component : string prop;  (** component *)
  pod_affinity : string prop option; [@option]
      (** Pod affinity configuration. Possible values: [AFFINITY_UNSPECIFIED, NO_AFFINITY, ANTI_AFFINITY] *)
  replica_count : float prop option; [@option]
      (** Pod replica count. *)
  container_resources :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    list;
  pod_toleration :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration
    list;
}
[@@deriving yojson_of]
(** Map of deployment configs to deployments (admission, audit, mutation). *)

type fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring = {
  backends : string prop list option; [@option]
      (** Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export. Possible values: [MONITORING_BACKEND_UNSPECIFIED, PROMETHEUS, CLOUD_MONITORING] *)
}
[@@deriving yojson_of]
(** Monitoring specifies the configuration of monitoring Policy Controller. *)

type fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles = {
  bundle : string prop;  (** bundle *)
  exempted_namespaces : string prop list option; [@option]
      (** The set of namespaces to be exempted from the bundle. *)
}
[@@deriving yojson_of]
(** Configures which bundles to install and their corresponding install specs. *)

type fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library = {
  installation : string prop option; [@option]
      (** Configures the manner in which the template library is installed on the cluster. Possible values: [INSTALATION_UNSPECIFIED, NOT_INSTALLED, ALL] *)
}
[@@deriving yojson_of]
(** Configures the installation of the Template Library. *)

type fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content = {
  bundles :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles
    list;
  template_library :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library
    list;
}
[@@deriving yojson_of]
(** Specifies the desired policy content on the cluster. *)

type fleet_default_member_config__policycontroller__policy_controller_hub_config = {
  audit_interval_seconds : float prop option; [@option]
      (** Interval for Policy Controller Audit scans (in seconds). When set to 0, this disables audit functionality altogether. *)
  constraint_violation_limit : float prop option; [@option]
      (** The maximum number of audit violations to be stored in a constraint. If not set, the internal default of 20 will be used. *)
  exemptable_namespaces : string prop list option; [@option]
      (** The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster. *)
  install_spec : string prop;
      (** Configures the mode of the Policy Controller installation Possible values: [INSTALL_SPEC_UNSPECIFIED, INSTALL_SPEC_NOT_INSTALLED, INSTALL_SPEC_ENABLED, INSTALL_SPEC_SUSPENDED, INSTALL_SPEC_DETACHED] *)
  log_denies_enabled : bool prop option; [@option]
      (** Logs all denies and dry run failures. *)
  mutation_enabled : bool prop option; [@option]
      (** Enables the ability to mutate resources using Policy Controller. *)
  referential_rules_enabled : bool prop option; [@option]
      (** Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated. *)
  deployment_configs :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs
    list;
  monitoring :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring
    list;
  policy_content :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content
    list;
}
[@@deriving yojson_of]
(** Configuration of Policy Controller *)

type fleet_default_member_config__policycontroller = {
  version : string prop option; [@option]
      (** Configures the version of Policy Controller *)
  policy_controller_hub_config :
    fleet_default_member_config__policycontroller__policy_controller_hub_config
    list;
}
[@@deriving yojson_of]
(** Policy Controller spec *)

type fleet_default_member_config = {
  configmanagement :
    fleet_default_member_config__configmanagement list;
  mesh : fleet_default_member_config__mesh list;
  policycontroller :
    fleet_default_member_config__policycontroller list;
}
[@@deriving yojson_of]
(** Optional. Fleet Default Membership Configuration. *)

type spec__clusterupgrade__gke_upgrade_overrides__post_conditions = {
  soaking : string prop;
      (** Amount of time to soak after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. *)
}
[@@deriving yojson_of]
(** Post conditions to override for the specified upgrade. *)

type spec__clusterupgrade__gke_upgrade_overrides__upgrade = {
  name : string prop;
      (** Name of the upgrade, e.g., k8s_control_plane. It should be a valid upgrade name. It must not exceet 99 characters. *)
  version : string prop;
      (** Version of the upgrade, e.g., 1.22.1-gke.100. It should be a valid version. It must not exceet 99 characters. *)
}
[@@deriving yojson_of]
(** Which upgrade to override. *)

type spec__clusterupgrade__gke_upgrade_overrides = {
  post_conditions :
    spec__clusterupgrade__gke_upgrade_overrides__post_conditions list;
  upgrade : spec__clusterupgrade__gke_upgrade_overrides__upgrade list;
}
[@@deriving yojson_of]
(** Configuration overrides for individual upgrades. *)

type spec__clusterupgrade__post_conditions = {
  soaking : string prop;
      (** Amount of time to soak after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. *)
}
[@@deriving yojson_of]
(** Post conditions to override for the specified upgrade. *)

type spec__clusterupgrade = {
  upstream_fleets : string prop list;
      (** Specified if other fleet should be considered as a source of upgrades. Currently, at most one upstream fleet is allowed. The fleet name should be either fleet project number or id. *)
  gke_upgrade_overrides :
    spec__clusterupgrade__gke_upgrade_overrides list;
  post_conditions : spec__clusterupgrade__post_conditions list;
}
[@@deriving yojson_of]
(** Clusterupgrade feature spec. *)

type spec__fleetobservability__logging_config__default_config = {
  mode : string prop option; [@option]
      (** Specified if fleet logging feature is enabled. Possible values: [MODE_UNSPECIFIED, COPY, MOVE] *)
}
[@@deriving yojson_of]
(** Specified if applying the default routing config to logs not specified in other configs. *)

type spec__fleetobservability__logging_config__fleet_scope_logs_config = {
  mode : string prop option; [@option]
      (** Specified if fleet logging feature is enabled. Possible values: [MODE_UNSPECIFIED, COPY, MOVE] *)
}
[@@deriving yojson_of]
(** Specified if applying the routing config to all logs for all fleet scopes. *)

type spec__fleetobservability__logging_config = {
  default_config :
    spec__fleetobservability__logging_config__default_config list;
  fleet_scope_logs_config :
    spec__fleetobservability__logging_config__fleet_scope_logs_config
    list;
}
[@@deriving yojson_of]
(** Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet. *)

type spec__fleetobservability = {
  logging_config : spec__fleetobservability__logging_config list;
}
[@@deriving yojson_of]
(** Fleet Observability feature spec. *)

type spec__multiclusteringress = {
  config_membership : string prop;
      (** Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: 'projects/foo-proj/locations/global/memberships/bar' *)
}
[@@deriving yojson_of]
(** Multicluster Ingress-specific spec. *)

type spec = {
  clusterupgrade : spec__clusterupgrade list;
  fleetobservability : spec__fleetobservability list;
  multiclusteringress : spec__multiclusteringress list;
}
[@@deriving yojson_of]
(** Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type resource_state = {
  has_resources : bool prop;  (** has_resources *)
  state : string prop;  (** state *)
}
[@@deriving yojson_of]

type state__state = {
  code : string prop;  (** code *)
  description : string prop;  (** description *)
  update_time : string prop;  (** update_time *)
}
[@@deriving yojson_of]

type state = { state : state__state list  (** state *) }
[@@deriving yojson_of]

type google_gke_hub_feature = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** GCP labels for this Feature.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** The location for the resource *)
  name : string prop option; [@option]
      (** The full, unique name of this Feature resource *)
  project : string prop option; [@option]  (** project *)
  fleet_default_member_config : fleet_default_member_config list;
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_feature *)

let fleet_default_member_config__configmanagement__config_sync__git
    ?gcp_service_account_email ?https_proxy ?policy_dir ?sync_branch
    ?sync_repo ?sync_rev ?sync_wait_secs ~secret_type () :
    fleet_default_member_config__configmanagement__config_sync__git =
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

let fleet_default_member_config__configmanagement__config_sync__oci
    ?gcp_service_account_email ?policy_dir ?sync_repo ?sync_wait_secs
    ?version ~secret_type () :
    fleet_default_member_config__configmanagement__config_sync__oci =
  {
    gcp_service_account_email;
    policy_dir;
    secret_type;
    sync_repo;
    sync_wait_secs;
    version;
  }

let fleet_default_member_config__configmanagement__config_sync
    ?source_format ~git ~oci () :
    fleet_default_member_config__configmanagement__config_sync =
  { source_format; git; oci }

let fleet_default_member_config__configmanagement ?version
    ~config_sync () : fleet_default_member_config__configmanagement =
  { version; config_sync }

let fleet_default_member_config__mesh ~management () :
    fleet_default_member_config__mesh =
  { management }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    ?cpu ?memory () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    =
  { cpu; memory }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    ?cpu ?memory () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    =
  { cpu; memory }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    ~limits ~requests () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    =
  { limits; requests }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration
    ?effect ?key ?operator ?value () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration
    =
  { effect; key; operator; value }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs
    ?pod_affinity ?replica_count ~component ~container_resources
    ~pod_toleration () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs
    =
  {
    component;
    pod_affinity;
    replica_count;
    container_resources;
    pod_toleration;
  }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring
    ?backends () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring
    =
  { backends }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles
    ?exempted_namespaces ~bundle () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles
    =
  { bundle; exempted_namespaces }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library
    ?installation () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library
    =
  { installation }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content
    ~bundles ~template_library () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content
    =
  { bundles; template_library }

let fleet_default_member_config__policycontroller__policy_controller_hub_config
    ?audit_interval_seconds ?constraint_violation_limit
    ?exemptable_namespaces ?log_denies_enabled ?mutation_enabled
    ?referential_rules_enabled ~install_spec ~deployment_configs
    ~monitoring ~policy_content () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config
    =
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

let fleet_default_member_config__policycontroller ?version
    ~policy_controller_hub_config () :
    fleet_default_member_config__policycontroller =
  { version; policy_controller_hub_config }

let fleet_default_member_config ~configmanagement ~mesh
    ~policycontroller () : fleet_default_member_config =
  { configmanagement; mesh; policycontroller }

let spec__clusterupgrade__gke_upgrade_overrides__post_conditions
    ~soaking () :
    spec__clusterupgrade__gke_upgrade_overrides__post_conditions =
  { soaking }

let spec__clusterupgrade__gke_upgrade_overrides__upgrade ~name
    ~version () :
    spec__clusterupgrade__gke_upgrade_overrides__upgrade =
  { name; version }

let spec__clusterupgrade__gke_upgrade_overrides ~post_conditions
    ~upgrade () : spec__clusterupgrade__gke_upgrade_overrides =
  { post_conditions; upgrade }

let spec__clusterupgrade__post_conditions ~soaking () :
    spec__clusterupgrade__post_conditions =
  { soaking }

let spec__clusterupgrade ~upstream_fleets ~gke_upgrade_overrides
    ~post_conditions () : spec__clusterupgrade =
  { upstream_fleets; gke_upgrade_overrides; post_conditions }

let spec__fleetobservability__logging_config__default_config ?mode ()
    : spec__fleetobservability__logging_config__default_config =
  { mode }

let spec__fleetobservability__logging_config__fleet_scope_logs_config
    ?mode () :
    spec__fleetobservability__logging_config__fleet_scope_logs_config
    =
  { mode }

let spec__fleetobservability__logging_config ~default_config
    ~fleet_scope_logs_config () :
    spec__fleetobservability__logging_config =
  { default_config; fleet_scope_logs_config }

let spec__fleetobservability ~logging_config () :
    spec__fleetobservability =
  { logging_config }

let spec__multiclusteringress ~config_membership () :
    spec__multiclusteringress =
  { config_membership }

let spec ~clusterupgrade ~fleetobservability ~multiclusteringress ()
    : spec =
  { clusterupgrade; fleetobservability; multiclusteringress }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_feature ?id ?labels ?name ?project ?timeouts
    ~location ~fleet_default_member_config ~spec () :
    google_gke_hub_feature =
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

type t = {
  create_time : string prop;
  delete_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  resource_state : resource_state list prop;
  state : state list prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let register ?tf_module ?id ?labels ?name ?project ?timeouts
    ~location ~fleet_default_member_config ~spec __resource_id =
  let __resource_type = "google_gke_hub_feature" in
  let __resource =
    google_gke_hub_feature ?id ?labels ?name ?project ?timeouts
      ~location ~fleet_default_member_config ~spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_feature __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       delete_time =
         Prop.computed __resource_type __resource_id "delete_time";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       resource_state =
         Prop.computed __resource_type __resource_id "resource_state";
       state = Prop.computed __resource_type __resource_id "state";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
