(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity : type_:string prop -> unit -> identity

type threat_detection_policy

val threat_detection_policy :
  ?disabled_alerts:string prop list ->
  ?email_account_admins:bool prop ->
  ?email_addresses:string prop list ->
  ?retention_days:float prop ->
  ?state:string prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  unit ->
  threat_detection_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sql_server

val azurerm_sql_server :
  ?connection_policy:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?threat_detection_policy:threat_detection_policy list ->
  ?timeouts:timeouts ->
  administrator_login:string prop ->
  administrator_login_password:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  version:string prop ->
  unit ->
  azurerm_sql_server

val yojson_of_azurerm_sql_server : azurerm_sql_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_login : string prop;
  administrator_login_password : string prop;
  connection_policy : string prop;
  fully_qualified_domain_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?connection_policy:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?threat_detection_policy:threat_detection_policy list ->
  ?timeouts:timeouts ->
  administrator_login:string prop ->
  administrator_login_password:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  version:string prop ->
  string ->
  t

val make :
  ?connection_policy:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?threat_detection_policy:threat_detection_policy list ->
  ?timeouts:timeouts ->
  administrator_login:string prop ->
  administrator_login_password:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  version:string prop ->
  string ->
  t Tf_core.resource
