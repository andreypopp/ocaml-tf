(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_voice_services_communications_gateway_test_line__timeouts
type azurerm_voice_services_communications_gateway_test_line

val azurerm_voice_services_communications_gateway_test_line :
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_voice_services_communications_gateway_test_line__timeouts ->
  location:string ->
  name:string ->
  phone_number:string ->
  purpose:string ->
  voice_services_communications_gateway_id:string ->
  string ->
  unit
