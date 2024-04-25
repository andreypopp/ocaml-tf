(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configmanagement__binauthz

val configmanagement__binauthz :
  ?enabled:bool prop -> unit -> configmanagement__binauthz

type configmanagement__config_sync__git

val configmanagement__config_sync__git :
  ?gcp_service_account_email:string prop ->
  ?https_proxy:string prop ->
  ?policy_dir:string prop ->
  ?secret_type:string prop ->
  ?sync_branch:string prop ->
  ?sync_repo:string prop ->
  ?sync_rev:string prop ->
  ?sync_wait_secs:string prop ->
  unit ->
  configmanagement__config_sync__git

type configmanagement__config_sync__oci

val configmanagement__config_sync__oci :
  ?gcp_service_account_email:string prop ->
  ?policy_dir:string prop ->
  ?secret_type:string prop ->
  ?sync_repo:string prop ->
  ?sync_wait_secs:string prop ->
  unit ->
  configmanagement__config_sync__oci

type configmanagement__config_sync

val configmanagement__config_sync :
  ?metrics_gcp_service_account_email:string prop ->
  ?prevent_drift:bool prop ->
  ?source_format:string prop ->
  ?git:configmanagement__config_sync__git list ->
  ?oci:configmanagement__config_sync__oci list ->
  unit ->
  configmanagement__config_sync

type configmanagement__hierarchy_controller

val configmanagement__hierarchy_controller :
  ?enable_hierarchical_resource_quota:bool prop ->
  ?enable_pod_tree_labels:bool prop ->
  ?enabled:bool prop ->
  unit ->
  configmanagement__hierarchy_controller

type configmanagement__policy_controller__monitoring

val configmanagement__policy_controller__monitoring :
  ?backends:string prop list ->
  unit ->
  configmanagement__policy_controller__monitoring

type configmanagement__policy_controller

val configmanagement__policy_controller :
  ?audit_interval_seconds:string prop ->
  ?enabled:bool prop ->
  ?exemptable_namespaces:string prop list ->
  ?log_denies_enabled:bool prop ->
  ?mutation_enabled:bool prop ->
  ?referential_rules_enabled:bool prop ->
  ?template_library_installed:bool prop ->
  ?monitoring:configmanagement__policy_controller__monitoring list ->
  unit ->
  configmanagement__policy_controller

type configmanagement

val configmanagement :
  ?version:string prop ->
  ?binauthz:configmanagement__binauthz list ->
  ?config_sync:configmanagement__config_sync list ->
  ?hierarchy_controller:configmanagement__hierarchy_controller list ->
  ?policy_controller:configmanagement__policy_controller list ->
  unit ->
  configmanagement

type mesh

val mesh :
  ?control_plane:string prop ->
  ?management:string prop ->
  unit ->
  mesh

type policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits

val policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits :
  ?cpu:string prop ->
  ?memory:string prop ->
  unit ->
  policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits

type policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests

val policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests :
  ?cpu:string prop ->
  ?memory:string prop ->
  unit ->
  policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests

type policycontroller__policy_controller_hub_config__deployment_configs__container_resources

val policycontroller__policy_controller_hub_config__deployment_configs__container_resources :
  ?limits:
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    list ->
  ?requests:
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    list ->
  unit ->
  policycontroller__policy_controller_hub_config__deployment_configs__container_resources

type policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations

val policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations :
  ?effect:string prop ->
  ?key:string prop ->
  ?operator:string prop ->
  ?value:string prop ->
  unit ->
  policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations

type policycontroller__policy_controller_hub_config__deployment_configs

val policycontroller__policy_controller_hub_config__deployment_configs :
  ?pod_affinity:string prop ->
  ?replica_count:float prop ->
  ?container_resources:
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    list ->
  ?pod_tolerations:
    policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations
    list ->
  component_name:string prop ->
  unit ->
  policycontroller__policy_controller_hub_config__deployment_configs

type policycontroller__policy_controller_hub_config__monitoring

val policycontroller__policy_controller_hub_config__monitoring :
  ?backends:string prop list ->
  unit ->
  policycontroller__policy_controller_hub_config__monitoring

type policycontroller__policy_controller_hub_config__policy_content__bundles

val policycontroller__policy_controller_hub_config__policy_content__bundles :
  ?exempted_namespaces:string prop list ->
  bundle_name:string prop ->
  unit ->
  policycontroller__policy_controller_hub_config__policy_content__bundles

type policycontroller__policy_controller_hub_config__policy_content__template_library

val policycontroller__policy_controller_hub_config__policy_content__template_library :
  ?installation:string prop ->
  unit ->
  policycontroller__policy_controller_hub_config__policy_content__template_library

type policycontroller__policy_controller_hub_config__policy_content

val policycontroller__policy_controller_hub_config__policy_content :
  ?template_library:
    policycontroller__policy_controller_hub_config__policy_content__template_library
    list ->
  bundles:
    policycontroller__policy_controller_hub_config__policy_content__bundles
    list ->
  unit ->
  policycontroller__policy_controller_hub_config__policy_content

type policycontroller__policy_controller_hub_config

val policycontroller__policy_controller_hub_config :
  ?audit_interval_seconds:float prop ->
  ?constraint_violation_limit:float prop ->
  ?exemptable_namespaces:string prop list ->
  ?install_spec:string prop ->
  ?log_denies_enabled:bool prop ->
  ?mutation_enabled:bool prop ->
  ?referential_rules_enabled:bool prop ->
  ?monitoring:
    policycontroller__policy_controller_hub_config__monitoring list ->
  ?policy_content:
    policycontroller__policy_controller_hub_config__policy_content
    list ->
  deployment_configs:
    policycontroller__policy_controller_hub_config__deployment_configs
    list ->
  unit ->
  policycontroller__policy_controller_hub_config

type policycontroller

val policycontroller :
  ?version:string prop ->
  policy_controller_hub_config:
    policycontroller__policy_controller_hub_config list ->
  unit ->
  policycontroller

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_gke_hub_feature_membership

val google_gke_hub_feature_membership :
  ?id:string prop ->
  ?membership_location:string prop ->
  ?project:string prop ->
  ?configmanagement:configmanagement list ->
  ?mesh:mesh list ->
  ?policycontroller:policycontroller list ->
  ?timeouts:timeouts ->
  feature:string prop ->
  location:string prop ->
  membership:string prop ->
  unit ->
  google_gke_hub_feature_membership

val yojson_of_google_gke_hub_feature_membership :
  google_gke_hub_feature_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  feature : string prop;
  id : string prop;
  location : string prop;
  membership : string prop;
  membership_location : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?membership_location:string prop ->
  ?project:string prop ->
  ?configmanagement:configmanagement list ->
  ?mesh:mesh list ->
  ?policycontroller:policycontroller list ->
  ?timeouts:timeouts ->
  feature:string prop ->
  location:string prop ->
  membership:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?membership_location:string prop ->
  ?project:string prop ->
  ?configmanagement:configmanagement list ->
  ?mesh:mesh list ->
  ?policycontroller:policycontroller list ->
  ?timeouts:timeouts ->
  feature:string prop ->
  location:string prop ->
  membership:string prop ->
  string ->
  t Tf_core.resource
