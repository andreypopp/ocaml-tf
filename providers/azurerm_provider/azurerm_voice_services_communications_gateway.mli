(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_voice_services_communications_gateway__service_location
type azurerm_voice_services_communications_gateway__timeouts
type azurerm_voice_services_communications_gateway

val azurerm_voice_services_communications_gateway :
  ?api_bridge:string ->
  ?auto_generated_domain_name_label_scope:string ->
  ?emergency_dial_strings:string list ->
  ?id:string ->
  ?microsoft_teams_voicemail_pilot_number:string ->
  ?on_prem_mcp_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_voice_services_communications_gateway__timeouts ->
  codecs:string ->
  connectivity:string ->
  e911_type:string ->
  location:string ->
  name:string ->
  platforms:string list ->
  resource_group_name:string ->
  service_location:
    azurerm_voice_services_communications_gateway__service_location
    list ->
  string ->
  unit
