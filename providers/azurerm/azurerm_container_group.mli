(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type exposed_port = {
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}

[@@@deriving.end]

type container__gpu

val container__gpu :
  ?count:float prop -> ?sku:string prop -> unit -> container__gpu

type container__gpu_limit

val container__gpu_limit :
  ?count:float prop ->
  ?sku:string prop ->
  unit ->
  container__gpu_limit

type container__liveness_probe__http_get

val container__liveness_probe__http_get :
  ?http_headers:(string * string prop) list ->
  ?path:string prop ->
  ?port:float prop ->
  ?scheme:string prop ->
  unit ->
  container__liveness_probe__http_get

type container__liveness_probe

val container__liveness_probe :
  ?exec:string prop list ->
  ?failure_threshold:float prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?success_threshold:float prop ->
  ?timeout_seconds:float prop ->
  http_get:container__liveness_probe__http_get list ->
  unit ->
  container__liveness_probe

type container__ports

val container__ports :
  ?port:float prop ->
  ?protocol:string prop ->
  unit ->
  container__ports

type container__readiness_probe__http_get

val container__readiness_probe__http_get :
  ?http_headers:(string * string prop) list ->
  ?path:string prop ->
  ?port:float prop ->
  ?scheme:string prop ->
  unit ->
  container__readiness_probe__http_get

type container__readiness_probe

val container__readiness_probe :
  ?exec:string prop list ->
  ?failure_threshold:float prop ->
  ?initial_delay_seconds:float prop ->
  ?period_seconds:float prop ->
  ?success_threshold:float prop ->
  ?timeout_seconds:float prop ->
  http_get:container__readiness_probe__http_get list ->
  unit ->
  container__readiness_probe

type container__security

val container__security :
  privilege_enabled:bool prop -> unit -> container__security

type container__volume__git_repo

val container__volume__git_repo :
  ?directory:string prop ->
  ?revision:string prop ->
  url:string prop ->
  unit ->
  container__volume__git_repo

type container__volume

val container__volume :
  ?empty_dir:bool prop ->
  ?read_only:bool prop ->
  ?secret:(string * string prop) list ->
  ?share_name:string prop ->
  ?storage_account_key:string prop ->
  ?storage_account_name:string prop ->
  mount_path:string prop ->
  name:string prop ->
  git_repo:container__volume__git_repo list ->
  unit ->
  container__volume

type container

val container :
  ?commands:string prop list ->
  ?cpu_limit:float prop ->
  ?environment_variables:(string * string prop) list ->
  ?memory_limit:float prop ->
  ?secure_environment_variables:(string * string prop) list ->
  cpu:float prop ->
  image:string prop ->
  memory:float prop ->
  name:string prop ->
  gpu:container__gpu list ->
  gpu_limit:container__gpu_limit list ->
  liveness_probe:container__liveness_probe list ->
  ports:container__ports list ->
  readiness_probe:container__readiness_probe list ->
  security:container__security list ->
  volume:container__volume list ->
  unit ->
  container

type diagnostics__log_analytics

val diagnostics__log_analytics :
  ?log_type:string prop ->
  ?metadata:(string * string prop) list ->
  workspace_id:string prop ->
  workspace_key:string prop ->
  unit ->
  diagnostics__log_analytics

type diagnostics

val diagnostics :
  log_analytics:diagnostics__log_analytics list ->
  unit ->
  diagnostics

type dns_config

val dns_config :
  ?options:string prop list ->
  ?search_domains:string prop list ->
  nameservers:string prop list ->
  unit ->
  dns_config

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type image_registry_credential

val image_registry_credential :
  ?password:string prop ->
  ?user_assigned_identity_id:string prop ->
  ?username:string prop ->
  server:string prop ->
  unit ->
  image_registry_credential

type init_container__security

val init_container__security :
  privilege_enabled:bool prop -> unit -> init_container__security

type init_container__volume__git_repo

val init_container__volume__git_repo :
  ?directory:string prop ->
  ?revision:string prop ->
  url:string prop ->
  unit ->
  init_container__volume__git_repo

type init_container__volume

val init_container__volume :
  ?empty_dir:bool prop ->
  ?read_only:bool prop ->
  ?secret:(string * string prop) list ->
  ?share_name:string prop ->
  ?storage_account_key:string prop ->
  ?storage_account_name:string prop ->
  mount_path:string prop ->
  name:string prop ->
  git_repo:init_container__volume__git_repo list ->
  unit ->
  init_container__volume

type init_container

val init_container :
  ?commands:string prop list ->
  ?environment_variables:(string * string prop) list ->
  ?secure_environment_variables:(string * string prop) list ->
  image:string prop ->
  name:string prop ->
  security:init_container__security list ->
  volume:init_container__volume list ->
  unit ->
  init_container

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_container_group

val azurerm_container_group :
  ?dns_name_label:string prop ->
  ?dns_name_label_reuse_policy:string prop ->
  ?exposed_port:exposed_port list ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?key_vault_key_id:string prop ->
  ?key_vault_user_assigned_identity_id:string prop ->
  ?network_profile_id:string prop ->
  ?priority:string prop ->
  ?restart_policy:string prop ->
  ?sku:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  os_type:string prop ->
  resource_group_name:string prop ->
  container:container list ->
  diagnostics:diagnostics list ->
  dns_config:dns_config list ->
  identity:identity list ->
  image_registry_credential:image_registry_credential list ->
  init_container:init_container list ->
  unit ->
  azurerm_container_group

val yojson_of_azurerm_container_group :
  azurerm_container_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dns_name_label : string prop;
  dns_name_label_reuse_policy : string prop;
  exposed_port : exposed_port list prop;
  fqdn : string prop;
  id : string prop;
  ip_address : string prop;
  ip_address_type : string prop;
  key_vault_key_id : string prop;
  key_vault_user_assigned_identity_id : string prop;
  location : string prop;
  name : string prop;
  network_profile_id : string prop;
  os_type : string prop;
  priority : string prop;
  resource_group_name : string prop;
  restart_policy : string prop;
  sku : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?dns_name_label:string prop ->
  ?dns_name_label_reuse_policy:string prop ->
  ?exposed_port:exposed_port list ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?key_vault_key_id:string prop ->
  ?key_vault_user_assigned_identity_id:string prop ->
  ?network_profile_id:string prop ->
  ?priority:string prop ->
  ?restart_policy:string prop ->
  ?sku:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  os_type:string prop ->
  resource_group_name:string prop ->
  container:container list ->
  diagnostics:diagnostics list ->
  dns_config:dns_config list ->
  identity:identity list ->
  image_registry_credential:image_registry_credential list ->
  init_container:init_container list ->
  string ->
  t

val make :
  ?dns_name_label:string prop ->
  ?dns_name_label_reuse_policy:string prop ->
  ?exposed_port:exposed_port list ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?key_vault_key_id:string prop ->
  ?key_vault_user_assigned_identity_id:string prop ->
  ?network_profile_id:string prop ->
  ?priority:string prop ->
  ?restart_policy:string prop ->
  ?sku:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  os_type:string prop ->
  resource_group_name:string prop ->
  container:container list ->
  diagnostics:diagnostics list ->
  dns_config:dns_config list ->
  identity:identity list ->
  image_registry_credential:image_registry_credential list ->
  init_container:init_container list ->
  string ->
  t Tf_core.resource
