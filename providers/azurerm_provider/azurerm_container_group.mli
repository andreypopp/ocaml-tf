(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_group__container__gpu
type azurerm_container_group__container__gpu_limit
type azurerm_container_group__container__liveness_probe__http_get
type azurerm_container_group__container__liveness_probe
type azurerm_container_group__container__ports
type azurerm_container_group__container__readiness_probe__http_get
type azurerm_container_group__container__readiness_probe
type azurerm_container_group__container__security
type azurerm_container_group__container__volume__git_repo
type azurerm_container_group__container__volume
type azurerm_container_group__container
type azurerm_container_group__diagnostics__log_analytics
type azurerm_container_group__diagnostics
type azurerm_container_group__dns_config
type azurerm_container_group__identity
type azurerm_container_group__image_registry_credential
type azurerm_container_group__init_container__security
type azurerm_container_group__init_container__volume__git_repo
type azurerm_container_group__init_container__volume
type azurerm_container_group__init_container
type azurerm_container_group__timeouts

type azurerm_container_group__exposed_port = {
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}

type azurerm_container_group

type t = private {
  dns_name_label : string prop;
  dns_name_label_reuse_policy : string prop;
  exposed_port : azurerm_container_group__exposed_port list prop;
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

val azurerm_container_group :
  ?dns_name_label:string prop ->
  ?dns_name_label_reuse_policy:string prop ->
  ?exposed_port:azurerm_container_group__exposed_port list ->
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
  ?timeouts:azurerm_container_group__timeouts ->
  location:string prop ->
  name:string prop ->
  os_type:string prop ->
  resource_group_name:string prop ->
  container:azurerm_container_group__container list ->
  diagnostics:azurerm_container_group__diagnostics list ->
  dns_config:azurerm_container_group__dns_config list ->
  identity:azurerm_container_group__identity list ->
  image_registry_credential:
    azurerm_container_group__image_registry_credential list ->
  init_container:azurerm_container_group__init_container list ->
  string ->
  t
