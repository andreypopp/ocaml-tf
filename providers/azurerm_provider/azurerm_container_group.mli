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
  port : float;  (** port *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]

type azurerm_container_group

val azurerm_container_group :
  ?dns_name_label:string ->
  ?dns_name_label_reuse_policy:string ->
  ?ip_address_type:string ->
  ?key_vault_key_id:string ->
  ?key_vault_user_assigned_identity_id:string ->
  ?priority:string ->
  ?restart_policy:string ->
  ?sku:string ->
  ?subnet_ids:string list ->
  ?tags:(string * string) list ->
  ?zones:string list ->
  ?timeouts:azurerm_container_group__timeouts ->
  location:string ->
  name:string ->
  os_type:string ->
  resource_group_name:string ->
  container:azurerm_container_group__container list ->
  diagnostics:azurerm_container_group__diagnostics list ->
  dns_config:azurerm_container_group__dns_config list ->
  identity:azurerm_container_group__identity list ->
  image_registry_credential:
    azurerm_container_group__image_registry_credential list ->
  init_container:azurerm_container_group__init_container list ->
  string ->
  unit
