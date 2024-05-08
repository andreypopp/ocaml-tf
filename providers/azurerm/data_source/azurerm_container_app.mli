(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dapr = {
  app_id : string prop;  (** app_id *)
  app_port : float prop;  (** app_port *)
  app_protocol : string prop;  (** app_protocol *)
}

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type ingress__traffic_weight = {
  label : string prop;  (** label *)
  latest_revision : bool prop;  (** latest_revision *)
  percentage : float prop;  (** percentage *)
  revision_suffix : string prop;  (** revision_suffix *)
}

type ingress__ip_security_restriction = {
  action : string prop;  (** action *)
  description : string prop;  (** description *)
  ip_address_range : string prop;  (** ip_address_range *)
  name : string prop;  (** name *)
}

type ingress__custom_domain = {
  certificate_binding_type : string prop;
      (** certificate_binding_type *)
  certificate_id : string prop;  (** certificate_id *)
  name : string prop;  (** name *)
}

type ingress = {
  allow_insecure_connections : bool prop;
      (** allow_insecure_connections *)
  custom_domain : ingress__custom_domain list;
      [@default []] [@yojson_drop_default ( = )]
      (** custom_domain *)
  exposed_port : float prop;  (** exposed_port *)
  external_enabled : bool prop;  (** external_enabled *)
  fqdn : string prop;  (** fqdn *)
  ip_security_restriction : ingress__ip_security_restriction list;
      [@default []] [@yojson_drop_default ( = )]
      (** ip_security_restriction *)
  target_port : float prop;  (** target_port *)
  traffic_weight : ingress__traffic_weight list;
      [@default []] [@yojson_drop_default ( = )]
      (** traffic_weight *)
  transport : string prop;  (** transport *)
}

type registry = {
  identity : string prop;  (** identity *)
  password_secret_name : string prop;  (** password_secret_name *)
  server : string prop;  (** server *)
  username : string prop;  (** username *)
}

type secret = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type template__volume = {
  name : string prop;  (** name *)
  storage_name : string prop;  (** storage_name *)
  storage_type : string prop;  (** storage_type *)
}

type template__tcp_scale_rule__authentication = {
  secret_name : string prop;  (** secret_name *)
  trigger_parameter : string prop;  (** trigger_parameter *)
}

type template__tcp_scale_rule = {
  authentication : template__tcp_scale_rule__authentication list;
      [@default []] [@yojson_drop_default ( = )]
      (** authentication *)
  concurrent_requests : string prop;  (** concurrent_requests *)
  name : string prop;  (** name *)
}

type template__init_container__volume_mounts = {
  name : string prop;  (** name *)
  path : string prop;  (** path *)
}

type template__init_container__env = {
  name : string prop;  (** name *)
  secret_name : string prop;  (** secret_name *)
  value : string prop;  (** value *)
}

type template__init_container = {
  args : string prop list; [@default []] [@yojson_drop_default ( = )]
      (** args *)
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** command *)
  cpu : float prop;  (** cpu *)
  env : template__init_container__env list;
      [@default []] [@yojson_drop_default ( = )]
      (** env *)
  ephemeral_storage : string prop;  (** ephemeral_storage *)
  image : string prop;  (** image *)
  memory : string prop;  (** memory *)
  name : string prop;  (** name *)
  volume_mounts : template__init_container__volume_mounts list;
      [@default []] [@yojson_drop_default ( = )]
      (** volume_mounts *)
}

type template__http_scale_rule__authentication = {
  secret_name : string prop;  (** secret_name *)
  trigger_parameter : string prop;  (** trigger_parameter *)
}

type template__http_scale_rule = {
  authentication : template__http_scale_rule__authentication list;
      [@default []] [@yojson_drop_default ( = )]
      (** authentication *)
  concurrent_requests : string prop;  (** concurrent_requests *)
  name : string prop;  (** name *)
}

type template__custom_scale_rule__authentication = {
  secret_name : string prop;  (** secret_name *)
  trigger_parameter : string prop;  (** trigger_parameter *)
}

type template__custom_scale_rule = {
  authentication : template__custom_scale_rule__authentication list;
      [@default []] [@yojson_drop_default ( = )]
      (** authentication *)
  custom_rule_type : string prop;  (** custom_rule_type *)
  metadata : (string * string prop) list;  (** metadata *)
  name : string prop;  (** name *)
}

type template__container__volume_mounts = {
  name : string prop;  (** name *)
  path : string prop;  (** path *)
}

type template__container__startup_probe__header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type template__container__startup_probe = {
  failure_count_threshold : float prop;
      (** failure_count_threshold *)
  header : template__container__startup_probe__header list;
      [@default []] [@yojson_drop_default ( = )]
      (** header *)
  host : string prop;  (** host *)
  interval_seconds : float prop;  (** interval_seconds *)
  path : string prop;  (** path *)
  port : float prop;  (** port *)
  termination_grace_period_seconds : float prop;
      (** termination_grace_period_seconds *)
  timeout : float prop;  (** timeout *)
  transport : string prop;  (** transport *)
}

type template__container__readiness_probe__header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type template__container__readiness_probe = {
  failure_count_threshold : float prop;
      (** failure_count_threshold *)
  header : template__container__readiness_probe__header list;
      [@default []] [@yojson_drop_default ( = )]
      (** header *)
  host : string prop;  (** host *)
  interval_seconds : float prop;  (** interval_seconds *)
  path : string prop;  (** path *)
  port : float prop;  (** port *)
  success_count_threshold : float prop;
      (** success_count_threshold *)
  timeout : float prop;  (** timeout *)
  transport : string prop;  (** transport *)
}

type template__container__liveness_probe__header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type template__container__liveness_probe = {
  failure_count_threshold : float prop;
      (** failure_count_threshold *)
  header : template__container__liveness_probe__header list;
      [@default []] [@yojson_drop_default ( = )]
      (** header *)
  host : string prop;  (** host *)
  initial_delay : float prop;  (** initial_delay *)
  interval_seconds : float prop;  (** interval_seconds *)
  path : string prop;  (** path *)
  port : float prop;  (** port *)
  termination_grace_period_seconds : float prop;
      (** termination_grace_period_seconds *)
  timeout : float prop;  (** timeout *)
  transport : string prop;  (** transport *)
}

type template__container__env = {
  name : string prop;  (** name *)
  secret_name : string prop;  (** secret_name *)
  value : string prop;  (** value *)
}

type template__container = {
  args : string prop list; [@default []] [@yojson_drop_default ( = )]
      (** args *)
  command : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** command *)
  cpu : float prop;  (** cpu *)
  env : template__container__env list;
      [@default []] [@yojson_drop_default ( = )]
      (** env *)
  ephemeral_storage : string prop;  (** ephemeral_storage *)
  image : string prop;  (** image *)
  liveness_probe : template__container__liveness_probe list;
      [@default []] [@yojson_drop_default ( = )]
      (** liveness_probe *)
  memory : string prop;  (** memory *)
  name : string prop;  (** name *)
  readiness_probe : template__container__readiness_probe list;
      [@default []] [@yojson_drop_default ( = )]
      (** readiness_probe *)
  startup_probe : template__container__startup_probe list;
      [@default []] [@yojson_drop_default ( = )]
      (** startup_probe *)
  volume_mounts : template__container__volume_mounts list;
      [@default []] [@yojson_drop_default ( = )]
      (** volume_mounts *)
}

type template__azure_queue_scale_rule__authentication = {
  secret_name : string prop;  (** secret_name *)
  trigger_parameter : string prop;  (** trigger_parameter *)
}

type template__azure_queue_scale_rule = {
  authentication :
    template__azure_queue_scale_rule__authentication list;
      [@default []] [@yojson_drop_default ( = )]
      (** authentication *)
  name : string prop;  (** name *)
  queue_length : float prop;  (** queue_length *)
  queue_name : string prop;  (** queue_name *)
}

type template = {
  azure_queue_scale_rule : template__azure_queue_scale_rule list;
      [@default []] [@yojson_drop_default ( = )]
      (** azure_queue_scale_rule *)
  container : template__container list;
      [@default []] [@yojson_drop_default ( = )]
      (** container *)
  custom_scale_rule : template__custom_scale_rule list;
      [@default []] [@yojson_drop_default ( = )]
      (** custom_scale_rule *)
  http_scale_rule : template__http_scale_rule list;
      [@default []] [@yojson_drop_default ( = )]
      (** http_scale_rule *)
  init_container : template__init_container list;
      [@default []] [@yojson_drop_default ( = )]
      (** init_container *)
  max_replicas : float prop;  (** max_replicas *)
  min_replicas : float prop;  (** min_replicas *)
  revision_suffix : string prop;  (** revision_suffix *)
  tcp_scale_rule : template__tcp_scale_rule list;
      [@default []] [@yojson_drop_default ( = )]
      (** tcp_scale_rule *)
  volume : template__volume list;
      [@default []] [@yojson_drop_default ( = )]
      (** volume *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_container_app

val azurerm_container_app :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_container_app

val yojson_of_azurerm_container_app : azurerm_container_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  container_app_environment_id : string prop;
  custom_domain_verification_id : string prop;
  dapr : dapr list prop;
  id : string prop;
  identity : identity list prop;
  ingress : ingress list prop;
  latest_revision_fqdn : string prop;
  latest_revision_name : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string list prop;
  registry : registry list prop;
  resource_group_name : string prop;
  revision_mode : string prop;
  secret : secret list prop;
  tags : (string * string) list prop;
  template : template list prop;
  workload_profile_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
