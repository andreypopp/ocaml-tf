(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cognitive_account__customer_managed_key
type azurerm_cognitive_account__identity
type azurerm_cognitive_account__network_acls__virtual_network_rules
type azurerm_cognitive_account__network_acls
type azurerm_cognitive_account__storage
type azurerm_cognitive_account__timeouts
type azurerm_cognitive_account

val azurerm_cognitive_account :
  ?custom_question_answering_search_service_id:string ->
  ?custom_question_answering_search_service_key:string ->
  ?custom_subdomain_name:string ->
  ?dynamic_throttling_enabled:bool ->
  ?fqdns:string list ->
  ?id:string ->
  ?local_auth_enabled:bool ->
  ?metrics_advisor_aad_client_id:string ->
  ?metrics_advisor_aad_tenant_id:string ->
  ?metrics_advisor_super_user_name:string ->
  ?metrics_advisor_website_name:string ->
  ?outbound_network_access_restricted:bool ->
  ?public_network_access_enabled:bool ->
  ?qna_runtime_endpoint:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_cognitive_account__timeouts ->
  kind:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  customer_managed_key:
    azurerm_cognitive_account__customer_managed_key list ->
  identity:azurerm_cognitive_account__identity list ->
  network_acls:azurerm_cognitive_account__network_acls list ->
  storage:azurerm_cognitive_account__storage list ->
  string ->
  unit
