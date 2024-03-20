(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type customer_managed_key

val customer_managed_key :
  ?identity_client_id:string prop ->
  key_vault_key_id:string prop ->
  unit ->
  customer_managed_key

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type network_acls__virtual_network_rules

val network_acls__virtual_network_rules :
  ?ignore_missing_vnet_service_endpoint:bool prop ->
  subnet_id:string prop ->
  unit ->
  network_acls__virtual_network_rules

type network_acls

val network_acls :
  ?ip_rules:string prop list ->
  default_action:string prop ->
  virtual_network_rules:network_acls__virtual_network_rules list ->
  unit ->
  network_acls

type storage

val storage :
  ?identity_client_id:string prop ->
  storage_account_id:string prop ->
  unit ->
  storage

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  kind:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  customer_managed_key:customer_managed_key list ->
  identity:identity list ->
  network_acls:network_acls list ->
  storage:storage list ->
  unit ->
  azurerm_cognitive_account

val yojson_of_azurerm_cognitive_account :
  azurerm_cognitive_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  custom_question_answering_search_service_id : string prop;
  custom_question_answering_search_service_key : string prop;
  custom_subdomain_name : string prop;
  dynamic_throttling_enabled : bool prop;
  endpoint : string prop;
  fqdns : string list prop;
  id : string prop;
  kind : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  metrics_advisor_aad_client_id : string prop;
  metrics_advisor_aad_tenant_id : string prop;
  metrics_advisor_super_user_name : string prop;
  metrics_advisor_website_name : string prop;
  name : string prop;
  outbound_network_access_restricted : bool prop;
  primary_access_key : string prop;
  public_network_access_enabled : bool prop;
  qna_runtime_endpoint : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  kind:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  customer_managed_key:customer_managed_key list ->
  identity:identity list ->
  network_acls:network_acls list ->
  storage:storage list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  kind:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  customer_managed_key:customer_managed_key list ->
  identity:identity list ->
  network_acls:network_acls list ->
  storage:storage list ->
  string ->
  t Tf_core.resource
