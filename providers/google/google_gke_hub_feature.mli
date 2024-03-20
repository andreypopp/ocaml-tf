(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type resource_state = {
  has_resources : bool prop;  (** has_resources *)
  state : string prop;  (** state *)
}

[@@@deriving.end]

type state__state = {
  code : string prop;  (** code *)
  description : string prop;  (** description *)
  update_time : string prop;  (** update_time *)
}

[@@@deriving.end]

type state = { state : state__state list  (** state *) }

[@@@deriving.end]

type fleet_default_member_config__configmanagement__config_sync__git

val fleet_default_member_config__configmanagement__config_sync__git :
  ?gcp_service_account_email:string prop ->
  ?https_proxy:string prop ->
  ?policy_dir:string prop ->
  ?sync_branch:string prop ->
  ?sync_repo:string prop ->
  ?sync_rev:string prop ->
  ?sync_wait_secs:string prop ->
  secret_type:string prop ->
  unit ->
  fleet_default_member_config__configmanagement__config_sync__git

type fleet_default_member_config__configmanagement__config_sync__oci

val fleet_default_member_config__configmanagement__config_sync__oci :
  ?gcp_service_account_email:string prop ->
  ?policy_dir:string prop ->
  ?sync_repo:string prop ->
  ?sync_wait_secs:string prop ->
  ?version:string prop ->
  secret_type:string prop ->
  unit ->
  fleet_default_member_config__configmanagement__config_sync__oci

type fleet_default_member_config__configmanagement__config_sync

val fleet_default_member_config__configmanagement__config_sync :
  ?source_format:string prop ->
  git:
    fleet_default_member_config__configmanagement__config_sync__git
    list ->
  oci:
    fleet_default_member_config__configmanagement__config_sync__oci
    list ->
  unit ->
  fleet_default_member_config__configmanagement__config_sync

type fleet_default_member_config__configmanagement

val fleet_default_member_config__configmanagement :
  ?version:string prop ->
  config_sync:
    fleet_default_member_config__configmanagement__config_sync list ->
  unit ->
  fleet_default_member_config__configmanagement

type fleet_default_member_config__mesh

val fleet_default_member_config__mesh :
  management:string prop -> unit -> fleet_default_member_config__mesh

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits

val fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits :
  ?cpu:string prop ->
  ?memory:string prop ->
  unit ->
  fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests

val fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests :
  ?cpu:string prop ->
  ?memory:string prop ->
  unit ->
  fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources

val fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources :
  limits:
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    list ->
  requests:
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    list ->
  unit ->
  fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration

val fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration :
  ?effect:string prop ->
  ?key:string prop ->
  ?operator:string prop ->
  ?value:string prop ->
  unit ->
  fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs

val fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs :
  ?pod_affinity:string prop ->
  ?replica_count:float prop ->
  component:string prop ->
  container_resources:
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    list ->
  pod_toleration:
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration
    list ->
  unit ->
  fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs

type fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring

val fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring :
  ?backends:string prop list ->
  unit ->
  fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring

type fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles

val fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles :
  ?exempted_namespaces:string prop list ->
  bundle:string prop ->
  unit ->
  fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles

type fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library

val fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library :
  ?installation:string prop ->
  unit ->
  fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library

type fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content

val fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content :
  bundles:
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles
    list ->
  template_library:
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library
    list ->
  unit ->
  fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content

type fleet_default_member_config__policycontroller__policy_controller_hub_config

val fleet_default_member_config__policycontroller__policy_controller_hub_config :
  ?audit_interval_seconds:float prop ->
  ?constraint_violation_limit:float prop ->
  ?exemptable_namespaces:string prop list ->
  ?log_denies_enabled:bool prop ->
  ?mutation_enabled:bool prop ->
  ?referential_rules_enabled:bool prop ->
  install_spec:string prop ->
  deployment_configs:
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs
    list ->
  monitoring:
    fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring
    list ->
  policy_content:
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content
    list ->
  unit ->
  fleet_default_member_config__policycontroller__policy_controller_hub_config

type fleet_default_member_config__policycontroller

val fleet_default_member_config__policycontroller :
  ?version:string prop ->
  policy_controller_hub_config:
    fleet_default_member_config__policycontroller__policy_controller_hub_config
    list ->
  unit ->
  fleet_default_member_config__policycontroller

type fleet_default_member_config

val fleet_default_member_config :
  configmanagement:fleet_default_member_config__configmanagement list ->
  mesh:fleet_default_member_config__mesh list ->
  policycontroller:fleet_default_member_config__policycontroller list ->
  unit ->
  fleet_default_member_config

type spec__clusterupgrade__gke_upgrade_overrides__post_conditions

val spec__clusterupgrade__gke_upgrade_overrides__post_conditions :
  soaking:string prop ->
  unit ->
  spec__clusterupgrade__gke_upgrade_overrides__post_conditions

type spec__clusterupgrade__gke_upgrade_overrides__upgrade

val spec__clusterupgrade__gke_upgrade_overrides__upgrade :
  name:string prop ->
  version:string prop ->
  unit ->
  spec__clusterupgrade__gke_upgrade_overrides__upgrade

type spec__clusterupgrade__gke_upgrade_overrides

val spec__clusterupgrade__gke_upgrade_overrides :
  post_conditions:
    spec__clusterupgrade__gke_upgrade_overrides__post_conditions list ->
  upgrade:spec__clusterupgrade__gke_upgrade_overrides__upgrade list ->
  unit ->
  spec__clusterupgrade__gke_upgrade_overrides

type spec__clusterupgrade__post_conditions

val spec__clusterupgrade__post_conditions :
  soaking:string prop ->
  unit ->
  spec__clusterupgrade__post_conditions

type spec__clusterupgrade

val spec__clusterupgrade :
  upstream_fleets:string prop list ->
  gke_upgrade_overrides:
    spec__clusterupgrade__gke_upgrade_overrides list ->
  post_conditions:spec__clusterupgrade__post_conditions list ->
  unit ->
  spec__clusterupgrade

type spec__fleetobservability__logging_config__default_config

val spec__fleetobservability__logging_config__default_config :
  ?mode:string prop ->
  unit ->
  spec__fleetobservability__logging_config__default_config

type spec__fleetobservability__logging_config__fleet_scope_logs_config

val spec__fleetobservability__logging_config__fleet_scope_logs_config :
  ?mode:string prop ->
  unit ->
  spec__fleetobservability__logging_config__fleet_scope_logs_config

type spec__fleetobservability__logging_config

val spec__fleetobservability__logging_config :
  default_config:
    spec__fleetobservability__logging_config__default_config list ->
  fleet_scope_logs_config:
    spec__fleetobservability__logging_config__fleet_scope_logs_config
    list ->
  unit ->
  spec__fleetobservability__logging_config

type spec__fleetobservability

val spec__fleetobservability :
  logging_config:spec__fleetobservability__logging_config list ->
  unit ->
  spec__fleetobservability

type spec__multiclusteringress

val spec__multiclusteringress :
  config_membership:string prop -> unit -> spec__multiclusteringress

type spec

val spec :
  clusterupgrade:spec__clusterupgrade list ->
  fleetobservability:spec__fleetobservability list ->
  multiclusteringress:spec__multiclusteringress list ->
  unit ->
  spec

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_gke_hub_feature

val google_gke_hub_feature :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  fleet_default_member_config:fleet_default_member_config list ->
  spec:spec list ->
  unit ->
  google_gke_hub_feature

val yojson_of_google_gke_hub_feature : google_gke_hub_feature -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  fleet_default_member_config:fleet_default_member_config list ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  fleet_default_member_config:fleet_default_member_config list ->
  spec:spec list ->
  string ->
  t Tf_core.resource
