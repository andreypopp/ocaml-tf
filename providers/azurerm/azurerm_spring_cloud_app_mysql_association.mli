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

type azurerm_spring_cloud_app_mysql_association

val azurerm_spring_cloud_app_mysql_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  database_name:string prop ->
  mysql_server_id:string prop ->
  name:string prop ->
  password:string prop ->
  spring_cloud_app_id:string prop ->
  username:string prop ->
  unit ->
  azurerm_spring_cloud_app_mysql_association

val yojson_of_azurerm_spring_cloud_app_mysql_association :
  azurerm_spring_cloud_app_mysql_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  database_name : string prop;
  id : string prop;
  mysql_server_id : string prop;
  name : string prop;
  password : string prop;
  spring_cloud_app_id : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  database_name:string prop ->
  mysql_server_id:string prop ->
  name:string prop ->
  password:string prop ->
  spring_cloud_app_id:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  database_name:string prop ->
  mysql_server_id:string prop ->
  name:string prop ->
  password:string prop ->
  spring_cloud_app_id:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
