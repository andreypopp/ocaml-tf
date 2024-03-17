(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_custom_domain__timeouts
type azurerm_spring_cloud_custom_domain

type t = private {
  certificate_name : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_app_id : string prop;
  thumbprint : string prop;
}

val azurerm_spring_cloud_custom_domain :
  ?certificate_name:string prop ->
  ?id:string prop ->
  ?thumbprint:string prop ->
  ?timeouts:azurerm_spring_cloud_custom_domain__timeouts ->
  name:string prop ->
  spring_cloud_app_id:string prop ->
  string ->
  t
