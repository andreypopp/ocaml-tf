(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type active_directory

val active_directory :
  ?organizational_unit:string prop ->
  dns_servers:string prop list ->
  domain:string prop ->
  password:string prop ->
  smb_server_name:string prop ->
  username:string prop ->
  unit ->
  active_directory

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_netapp_account

val azurerm_netapp_account :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  active_directory:active_directory list ->
  identity:identity list ->
  unit ->
  azurerm_netapp_account

val yojson_of_azurerm_netapp_account : azurerm_netapp_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  active_directory:active_directory list ->
  identity:identity list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  active_directory:active_directory list ->
  identity:identity list ->
  string ->
  t Tf_core.resource
