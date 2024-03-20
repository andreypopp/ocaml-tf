(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type blob_storage__managed_identity

val blob_storage__managed_identity :
  client_id:string prop -> unit -> blob_storage__managed_identity

type blob_storage__service_principal

val blob_storage__service_principal :
  ?client_certificate_base64:string prop ->
  ?client_certificate_password:string prop ->
  ?client_certificate_send_chain:bool prop ->
  ?client_secret:string prop ->
  client_id:string prop ->
  tenant_id:string prop ->
  unit ->
  blob_storage__service_principal

type blob_storage

val blob_storage :
  ?account_key:string prop ->
  ?local_auth_reference:string prop ->
  ?sas_token:string prop ->
  ?sync_interval_in_seconds:float prop ->
  ?timeout_in_seconds:float prop ->
  container_id:string prop ->
  managed_identity:blob_storage__managed_identity list ->
  service_principal:blob_storage__service_principal list ->
  unit ->
  blob_storage

type bucket

val bucket :
  ?access_key:string prop ->
  ?local_auth_reference:string prop ->
  ?secret_key_base64:string prop ->
  ?sync_interval_in_seconds:float prop ->
  ?timeout_in_seconds:float prop ->
  ?tls_enabled:bool prop ->
  bucket_name:string prop ->
  url:string prop ->
  unit ->
  bucket

type git_repository

val git_repository :
  ?https_ca_cert_base64:string prop ->
  ?https_key_base64:string prop ->
  ?https_user:string prop ->
  ?local_auth_reference:string prop ->
  ?ssh_known_hosts_base64:string prop ->
  ?ssh_private_key_base64:string prop ->
  ?sync_interval_in_seconds:float prop ->
  ?timeout_in_seconds:float prop ->
  reference_type:string prop ->
  reference_value:string prop ->
  url:string prop ->
  unit ->
  git_repository

type kustomizations

val kustomizations :
  ?depends_on:string prop list ->
  ?garbage_collection_enabled:bool prop ->
  ?path:string prop ->
  ?recreating_enabled:bool prop ->
  ?retry_interval_in_seconds:float prop ->
  ?sync_interval_in_seconds:float prop ->
  ?timeout_in_seconds:float prop ->
  name:string prop ->
  unit ->
  kustomizations

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_kubernetes_flux_configuration

val azurerm_kubernetes_flux_configuration :
  ?continuous_reconciliation_enabled:bool prop ->
  ?id:string prop ->
  ?scope:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  namespace:string prop ->
  blob_storage:blob_storage list ->
  bucket:bucket list ->
  git_repository:git_repository list ->
  kustomizations:kustomizations list ->
  unit ->
  azurerm_kubernetes_flux_configuration

val yojson_of_azurerm_kubernetes_flux_configuration :
  azurerm_kubernetes_flux_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_id : string prop;
  continuous_reconciliation_enabled : bool prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?continuous_reconciliation_enabled:bool prop ->
  ?id:string prop ->
  ?scope:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  namespace:string prop ->
  blob_storage:blob_storage list ->
  bucket:bucket list ->
  git_repository:git_repository list ->
  kustomizations:kustomizations list ->
  string ->
  t

val make :
  ?continuous_reconciliation_enabled:bool prop ->
  ?id:string prop ->
  ?scope:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  name:string prop ->
  namespace:string prop ->
  blob_storage:blob_storage list ->
  bucket:bucket list ->
  git_repository:git_repository list ->
  kustomizations:kustomizations list ->
  string ->
  t Tf_core.resource
