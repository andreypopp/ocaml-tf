(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_gateway_custom_domain__timeouts
type azurerm_spring_cloud_gateway_custom_domain

type t = private {
  id : string prop;
  name : string prop;
  spring_cloud_gateway_id : string prop;
  thumbprint : string prop;
}

val azurerm_spring_cloud_gateway_custom_domain :
  ?id:string prop ->
  ?thumbprint:string prop ->
  ?timeouts:azurerm_spring_cloud_gateway_custom_domain__timeouts ->
  name:string prop ->
  spring_cloud_gateway_id:string prop ->
  string ->
  t
