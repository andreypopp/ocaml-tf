(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iotcentral_organization__timeouts
type azurerm_iotcentral_organization

type t = private {
  display_name : string prop;
  id : string prop;
  iotcentral_application_id : string prop;
  organization_id : string prop;
  parent_organization_id : string prop;
}

val azurerm_iotcentral_organization :
  ?id:string prop ->
  ?parent_organization_id:string prop ->
  ?timeouts:azurerm_iotcentral_organization__timeouts ->
  display_name:string prop ->
  iotcentral_application_id:string prop ->
  organization_id:string prop ->
  string ->
  t
