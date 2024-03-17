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
  ?custom_question_answering_search_service_id:string prop ->
  ?custom_question_answering_search_service_key:string prop ->
  ?custom_subdomain_name:string prop ->
  ?dynamic_throttling_enabled:bool prop ->
  ?fqdns:string prop list ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?metrics_advisor_aad_client_id:string prop ->
  ?metrics_advisor_aad_tenant_id:string prop ->
  ?metrics_advisor_super_user_name:string prop ->
  ?metrics_advisor_website_name:string prop ->
  ?outbound_network_access_restricted:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?qna_runtime_endpoint:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_cognitive_account__timeouts ->
  kind:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  customer_managed_key:
    azurerm_cognitive_account__customer_managed_key list ->
  identity:azurerm_cognitive_account__identity list ->
  network_acls:azurerm_cognitive_account__network_acls list ->
  storage:azurerm_cognitive_account__storage list ->
  string ->
  unit
