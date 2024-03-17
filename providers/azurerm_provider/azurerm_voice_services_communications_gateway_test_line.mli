(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_voice_services_communications_gateway_test_line__timeouts
type azurerm_voice_services_communications_gateway_test_line

val azurerm_voice_services_communications_gateway_test_line :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_voice_services_communications_gateway_test_line__timeouts ->
  location:string prop ->
  name:string prop ->
  phone_number:string prop ->
  purpose:string prop ->
  voice_services_communications_gateway_id:string prop ->
  string ->
  unit
