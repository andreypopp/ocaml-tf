(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_voice_services_communications_gateway__service_location
type azurerm_voice_services_communications_gateway__timeouts
type azurerm_voice_services_communications_gateway

type t = private {
  api_bridge : string prop;
  auto_generated_domain_name_label_scope : string prop;
  codecs : string prop;
  connectivity : string prop;
  e911_type : string prop;
  emergency_dial_strings : string list prop;
  id : string prop;
  location : string prop;
  microsoft_teams_voicemail_pilot_number : string prop;
  name : string prop;
  on_prem_mcp_enabled : bool prop;
  platforms : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_voice_services_communications_gateway :
  ?api_bridge:string prop ->
  ?auto_generated_domain_name_label_scope:string prop ->
  ?emergency_dial_strings:string prop list ->
  ?id:string prop ->
  ?microsoft_teams_voicemail_pilot_number:string prop ->
  ?on_prem_mcp_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_voice_services_communications_gateway__timeouts ->
  codecs:string prop ->
  connectivity:string prop ->
  e911_type:string prop ->
  location:string prop ->
  name:string prop ->
  platforms:string prop list ->
  resource_group_name:string prop ->
  service_location:
    azurerm_voice_services_communications_gateway__service_location
    list ->
  string ->
  t
