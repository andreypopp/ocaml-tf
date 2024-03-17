(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights_api_key__timeouts
type azurerm_application_insights_api_key

type t = private {
  api_key : string prop;
  application_insights_id : string prop;
  id : string prop;
  name : string prop;
  read_permissions : string list prop;
  write_permissions : string list prop;
}

val azurerm_application_insights_api_key :
  ?id:string prop ->
  ?read_permissions:string prop list ->
  ?write_permissions:string prop list ->
  ?timeouts:azurerm_application_insights_api_key__timeouts ->
  application_insights_id:string prop ->
  name:string prop ->
  string ->
  t
