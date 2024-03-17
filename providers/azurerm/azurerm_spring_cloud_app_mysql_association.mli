(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_app_mysql_association__timeouts
type azurerm_spring_cloud_app_mysql_association

type t = private {
  database_name : string prop;
  id : string prop;
  mysql_server_id : string prop;
  name : string prop;
  password : string prop;
  spring_cloud_app_id : string prop;
  username : string prop;
}

val azurerm_spring_cloud_app_mysql_association :
  ?id:string prop ->
  ?timeouts:azurerm_spring_cloud_app_mysql_association__timeouts ->
  database_name:string prop ->
  mysql_server_id:string prop ->
  name:string prop ->
  password:string prop ->
  spring_cloud_app_id:string prop ->
  username:string prop ->
  string ->
  t
