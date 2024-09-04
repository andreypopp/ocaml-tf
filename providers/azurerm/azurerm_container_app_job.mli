(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type event_trigger_config__scale__rules__authentication

val event_trigger_config__scale__rules__authentication :
  secret_name:string prop ->
  trigger_parameter:string prop ->
  unit ->
  event_trigger_config__scale__rules__authentication

type event_trigger_config__scale__rules

val event_trigger_config__scale__rules :
  ?authentication:
    event_trigger_config__scale__rules__authentication list ->
  custom_rule_type:string prop ->
  metadata:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  event_trigger_config__scale__rules

type event_trigger_config__scale

val event_trigger_config__scale :
  ?max_executions:float prop ->
  ?min_executions:float prop ->
  ?polling_interval_in_seconds:float prop ->
  ?rules:event_trigger_config__scale__rules list ->
  unit ->
  event_trigger_config__scale

type event_trigger_config

val event_trigger_config :
  ?parallelism:float prop ->
  ?replica_completion_count:float prop ->
  ?scale:event_trigger_config__scale list ->
  unit ->
  event_trigger_config

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type manual_trigger_config

val manual_trigger_config :
  ?parallelism:float prop ->
  ?replica_completion_count:float prop ->
  unit ->
  manual_trigger_config

type registries

val registries :
  ?identity:string prop ->
  ?password_secret_name:string prop ->
  ?username:string prop ->
  server:string prop ->
  unit ->
  registries

type registry

val registry :
  ?identity:string prop ->
  ?password_secret_name:string prop ->
  ?username:string prop ->
  server:string prop ->
  unit ->
  registry

type schedule_trigger_config

val schedule_trigger_config :
  ?parallelism:float prop ->
  ?replica_completion_count:float prop ->
  cron_expression:string prop ->
  unit ->
  schedule_trigger_config

type secret

val secret :
  ?identity:string prop ->
  ?key_vault_secret_id:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  secret

type secrets

val secrets :
  ?identity:string prop ->
  ?key_vault_secret_id:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  secrets

type template__container__env

val template__container__env :
  ?secret_name:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  template__container__env

type template__container__liveness_probe__header

val template__container__liveness_probe__header :
  name:string prop ->
  value:string prop ->
  unit ->
  template__container__liveness_probe__header

type template__container__liveness_probe

val template__container__liveness_probe :
  ?failure_count_threshold:float prop ->
  ?host:string prop ->
  ?initial_delay:float prop ->
  ?interval_seconds:float prop ->
  ?path:string prop ->
  ?timeout:float prop ->
  ?header:template__container__liveness_probe__header list ->
  port:float prop ->
  transport:string prop ->
  unit ->
  template__container__liveness_probe

type template__container__readiness_probe__header

val template__container__readiness_probe__header :
  name:string prop ->
  value:string prop ->
  unit ->
  template__container__readiness_probe__header

type template__container__readiness_probe

val template__container__readiness_probe :
  ?failure_count_threshold:float prop ->
  ?host:string prop ->
  ?interval_seconds:float prop ->
  ?path:string prop ->
  ?success_count_threshold:float prop ->
  ?timeout:float prop ->
  ?header:template__container__readiness_probe__header list ->
  port:float prop ->
  transport:string prop ->
  unit ->
  template__container__readiness_probe

type template__container__startup_probe__header

val template__container__startup_probe__header :
  name:string prop ->
  value:string prop ->
  unit ->
  template__container__startup_probe__header

type template__container__startup_probe

val template__container__startup_probe :
  ?failure_count_threshold:float prop ->
  ?host:string prop ->
  ?interval_seconds:float prop ->
  ?path:string prop ->
  ?timeout:float prop ->
  ?header:template__container__startup_probe__header list ->
  port:float prop ->
  transport:string prop ->
  unit ->
  template__container__startup_probe

type template__container__volume_mounts

val template__container__volume_mounts :
  name:string prop ->
  path:string prop ->
  unit ->
  template__container__volume_mounts

type template__container

val template__container :
  ?args:string prop list ->
  ?command:string prop list ->
  ?env:template__container__env list ->
  ?liveness_probe:template__container__liveness_probe list ->
  ?readiness_probe:template__container__readiness_probe list ->
  ?startup_probe:template__container__startup_probe list ->
  ?volume_mounts:template__container__volume_mounts list ->
  cpu:float prop ->
  image:string prop ->
  memory:string prop ->
  name:string prop ->
  unit ->
  template__container

type template__init_container__env

val template__init_container__env :
  ?secret_name:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  template__init_container__env

type template__init_container__volume_mounts

val template__init_container__volume_mounts :
  name:string prop ->
  path:string prop ->
  unit ->
  template__init_container__volume_mounts

type template__init_container

val template__init_container :
  ?args:string prop list ->
  ?command:string prop list ->
  ?cpu:float prop ->
  ?memory:string prop ->
  ?env:template__init_container__env list ->
  ?volume_mounts:template__init_container__volume_mounts list ->
  image:string prop ->
  name:string prop ->
  unit ->
  template__init_container

type template__volume

val template__volume :
  ?storage_name:string prop ->
  ?storage_type:string prop ->
  name:string prop ->
  unit ->
  template__volume

type template

val template :
  ?init_container:template__init_container list ->
  ?volume:template__volume list ->
  container:template__container list ->
  unit ->
  template

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_container_app_job

val azurerm_container_app_job :
  ?id:string prop ->
  ?replica_retry_limit:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?workload_profile_name:string prop ->
  ?event_trigger_config:event_trigger_config list ->
  ?identity:identity list ->
  ?manual_trigger_config:manual_trigger_config list ->
  ?registries:registries list ->
  ?registry:registry list ->
  ?schedule_trigger_config:schedule_trigger_config list ->
  ?timeouts:timeouts ->
  container_app_environment_id:string prop ->
  location:string prop ->
  name:string prop ->
  replica_timeout_in_seconds:float prop ->
  resource_group_name:string prop ->
  secret:secret list ->
  secrets:secrets list ->
  template:template list ->
  unit ->
  azurerm_container_app_job

val yojson_of_azurerm_container_app_job :
  azurerm_container_app_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  container_app_environment_id : string prop;
  event_stream_endpoint : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string list prop;
  replica_retry_limit : float prop;
  replica_timeout_in_seconds : float prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  workload_profile_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?replica_retry_limit:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?workload_profile_name:string prop ->
  ?event_trigger_config:event_trigger_config list ->
  ?identity:identity list ->
  ?manual_trigger_config:manual_trigger_config list ->
  ?registries:registries list ->
  ?registry:registry list ->
  ?schedule_trigger_config:schedule_trigger_config list ->
  ?timeouts:timeouts ->
  container_app_environment_id:string prop ->
  location:string prop ->
  name:string prop ->
  replica_timeout_in_seconds:float prop ->
  resource_group_name:string prop ->
  secret:secret list ->
  secrets:secrets list ->
  template:template list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?replica_retry_limit:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?workload_profile_name:string prop ->
  ?event_trigger_config:event_trigger_config list ->
  ?identity:identity list ->
  ?manual_trigger_config:manual_trigger_config list ->
  ?registries:registries list ->
  ?registry:registry list ->
  ?schedule_trigger_config:schedule_trigger_config list ->
  ?timeouts:timeouts ->
  container_app_environment_id:string prop ->
  location:string prop ->
  name:string prop ->
  replica_timeout_in_seconds:float prop ->
  resource_group_name:string prop ->
  secret:secret list ->
  secrets:secrets list ->
  template:template list ->
  string ->
  t Tf_core.resource
