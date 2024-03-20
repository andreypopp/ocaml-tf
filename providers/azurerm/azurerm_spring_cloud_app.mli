(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type custom_persistent_disk

val custom_persistent_disk :
  ?mount_options:string prop list ->
  ?read_only_enabled:bool prop ->
  mount_path:string prop ->
  share_name:string prop ->
  storage_name:string prop ->
  unit ->
  custom_persistent_disk

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type ingress_settings

val ingress_settings :
  ?backend_protocol:string prop ->
  ?read_timeout_in_seconds:float prop ->
  ?send_timeout_in_seconds:float prop ->
  ?session_affinity:string prop ->
  ?session_cookie_max_age:float prop ->
  unit ->
  ingress_settings

type persistent_disk

val persistent_disk :
  ?mount_path:string prop ->
  size_in_gb:float prop ->
  unit ->
  persistent_disk

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_spring_cloud_app

val azurerm_spring_cloud_app :
  ?addon_json:string prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?is_public:bool prop ->
  ?public_endpoint_enabled:bool prop ->
  ?tls_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  custom_persistent_disk:custom_persistent_disk list ->
  identity:identity list ->
  ingress_settings:ingress_settings list ->
  persistent_disk:persistent_disk list ->
  unit ->
  azurerm_spring_cloud_app

val yojson_of_azurerm_spring_cloud_app :
  azurerm_spring_cloud_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  addon_json : string prop;
  fqdn : string prop;
  https_only : bool prop;
  id : string prop;
  is_public : bool prop;
  name : string prop;
  public_endpoint_enabled : bool prop;
  resource_group_name : string prop;
  service_name : string prop;
  tls_enabled : bool prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?addon_json:string prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?is_public:bool prop ->
  ?public_endpoint_enabled:bool prop ->
  ?tls_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  custom_persistent_disk:custom_persistent_disk list ->
  identity:identity list ->
  ingress_settings:ingress_settings list ->
  persistent_disk:persistent_disk list ->
  string ->
  t

val make :
  ?addon_json:string prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?is_public:bool prop ->
  ?public_endpoint_enabled:bool prop ->
  ?tls_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  custom_persistent_disk:custom_persistent_disk list ->
  identity:identity list ->
  ingress_settings:ingress_settings list ->
  persistent_disk:persistent_disk list ->
  string ->
  t Tf_core.resource
