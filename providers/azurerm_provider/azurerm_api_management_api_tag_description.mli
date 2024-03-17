(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_api_tag_description__timeouts
type azurerm_api_management_api_tag_description

val azurerm_api_management_api_tag_description :
  ?description:string prop ->
  ?external_documentation_description:string prop ->
  ?external_documentation_url:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_api_management_api_tag_description__timeouts ->
  api_tag_id:string prop ->
  string ->
  unit
