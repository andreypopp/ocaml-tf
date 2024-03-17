(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_application_live_view__timeouts
type azurerm_spring_cloud_application_live_view

type t = private {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

val azurerm_spring_cloud_application_live_view :
  ?id:string prop ->
  ?timeouts:azurerm_spring_cloud_application_live_view__timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t
