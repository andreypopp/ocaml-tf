(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dapr

val dapr :
  ?app_port:float prop ->
  ?app_protocol:string prop ->
  app_id:string prop ->
  unit ->
  dapr

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type ingress__custom_domain

val ingress__custom_domain :
  ?certificate_binding_type:string prop ->
  certificate_id:string prop ->
  name:string prop ->
  unit ->
  ingress__custom_domain

type ingress__ip_security_restriction

val ingress__ip_security_restriction :
  ?description:string prop ->
  action:string prop ->
  ip_address_range:string prop ->
  name:string prop ->
  unit ->
  ingress__ip_security_restriction

type ingress__traffic_weight

val ingress__traffic_weight :
  ?label:string prop ->
  ?latest_revision:bool prop ->
  ?revision_suffix:string prop ->
  percentage:float prop ->
  unit ->
  ingress__traffic_weight

type ingress

val ingress :
  ?allow_insecure_connections:bool prop ->
  ?exposed_port:float prop ->
  ?external_enabled:bool prop ->
  ?transport:string prop ->
  ?custom_domain:ingress__custom_domain list ->
  ?ip_security_restriction:ingress__ip_security_restriction list ->
  target_port:float prop ->
  traffic_weight:ingress__traffic_weight list ->
  unit ->
  ingress

type registry

val registry :
  ?identity:string prop ->
  ?password_secret_name:string prop ->
  ?username:string prop ->
  server:string prop ->
  unit ->
  registry

type secret

val secret :
  ?identity:string prop ->
  ?key_vault_secret_id:string prop ->
  ?value:string prop ->
  name:string prop ->
  unit ->
  secret

type template__azure_queue_scale_rule__authentication

val template__azure_queue_scale_rule__authentication :
  secret_name:string prop ->
  trigger_parameter:string prop ->
  unit ->
  template__azure_queue_scale_rule__authentication

type template__azure_queue_scale_rule

val template__azure_queue_scale_rule :
  name:string prop ->
  queue_length:float prop ->
  queue_name:string prop ->
  authentication:
    template__azure_queue_scale_rule__authentication list ->
  unit ->
  template__azure_queue_scale_rule

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

type template__custom_scale_rule__authentication

val template__custom_scale_rule__authentication :
  secret_name:string prop ->
  trigger_parameter:string prop ->
  unit ->
  template__custom_scale_rule__authentication

type template__custom_scale_rule

val template__custom_scale_rule :
  ?authentication:template__custom_scale_rule__authentication list ->
  custom_rule_type:string prop ->
  metadata:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  template__custom_scale_rule

type template__http_scale_rule__authentication

val template__http_scale_rule__authentication :
  ?trigger_parameter:string prop ->
  secret_name:string prop ->
  unit ->
  template__http_scale_rule__authentication

type template__http_scale_rule

val template__http_scale_rule :
  ?authentication:template__http_scale_rule__authentication list ->
  concurrent_requests:string prop ->
  name:string prop ->
  unit ->
  template__http_scale_rule

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

type template__tcp_scale_rule__authentication

val template__tcp_scale_rule__authentication :
  ?trigger_parameter:string prop ->
  secret_name:string prop ->
  unit ->
  template__tcp_scale_rule__authentication

type template__tcp_scale_rule

val template__tcp_scale_rule :
  ?authentication:template__tcp_scale_rule__authentication list ->
  concurrent_requests:string prop ->
  name:string prop ->
  unit ->
  template__tcp_scale_rule

type template__volume

val template__volume :
  ?storage_name:string prop ->
  ?storage_type:string prop ->
  name:string prop ->
  unit ->
  template__volume

type template

val template :
  ?max_replicas:float prop ->
  ?min_replicas:float prop ->
  ?revision_suffix:string prop ->
  ?azure_queue_scale_rule:template__azure_queue_scale_rule list ->
  ?custom_scale_rule:template__custom_scale_rule list ->
  ?http_scale_rule:template__http_scale_rule list ->
  ?init_container:template__init_container list ->
  ?tcp_scale_rule:template__tcp_scale_rule list ->
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

type azurerm_container_app

val azurerm_container_app :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?workload_profile_name:string prop ->
  ?dapr:dapr list ->
  ?identity:identity list ->
  ?ingress:ingress list ->
  ?registry:registry list ->
  ?timeouts:timeouts ->
  container_app_environment_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  revision_mode:string prop ->
  secret:secret list ->
  template:template list ->
  unit ->
  azurerm_container_app

val yojson_of_azurerm_container_app : azurerm_container_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  container_app_environment_id : string prop;
  custom_domain_verification_id : string prop;
  id : string prop;
  latest_revision_fqdn : string prop;
  latest_revision_name : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string list prop;
  resource_group_name : string prop;
  revision_mode : string prop;
  tags : string Tf_core.assoc prop;
  workload_profile_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?workload_profile_name:string prop ->
  ?dapr:dapr list ->
  ?identity:identity list ->
  ?ingress:ingress list ->
  ?registry:registry list ->
  ?timeouts:timeouts ->
  container_app_environment_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  revision_mode:string prop ->
  secret:secret list ->
  template:template list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?workload_profile_name:string prop ->
  ?dapr:dapr list ->
  ?identity:identity list ->
  ?ingress:ingress list ->
  ?registry:registry list ->
  ?timeouts:timeouts ->
  container_app_environment_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  revision_mode:string prop ->
  secret:secret list ->
  template:template list ->
  string ->
  t Tf_core.resource
