(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_app_mysql_association__timeouts
type azurerm_spring_cloud_app_mysql_association

val azurerm_spring_cloud_app_mysql_association :
  ?timeouts:azurerm_spring_cloud_app_mysql_association__timeouts ->
  database_name:string ->
  mysql_server_id:string ->
  name:string ->
  password:string ->
  spring_cloud_app_id:string ->
  username:string ->
  string ->
  unit
