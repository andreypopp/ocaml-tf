(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type wsfc_domain_profile

val wsfc_domain_profile :
  ?cluster_bootstrap_account_name:string prop ->
  ?cluster_operator_account_name:string prop ->
  ?organizational_unit_path:string prop ->
  ?sql_service_account_name:string prop ->
  ?storage_account_primary_key:string prop ->
  ?storage_account_url:string prop ->
  cluster_subnet_type:string prop ->
  fqdn:string prop ->
  unit ->
  wsfc_domain_profile

type azurerm_mssql_virtual_machine_group

val azurerm_mssql_virtual_machine_group :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sql_image_offer:string prop ->
  sql_image_sku:string prop ->
  wsfc_domain_profile:wsfc_domain_profile list ->
  unit ->
  azurerm_mssql_virtual_machine_group

val yojson_of_azurerm_mssql_virtual_machine_group :
  azurerm_mssql_virtual_machine_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sql_image_offer : string prop;
  sql_image_sku : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sql_image_offer:string prop ->
  sql_image_sku:string prop ->
  wsfc_domain_profile:wsfc_domain_profile list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sql_image_offer:string prop ->
  sql_image_sku:string prop ->
  wsfc_domain_profile:wsfc_domain_profile list ->
  string ->
  t Tf_core.resource
