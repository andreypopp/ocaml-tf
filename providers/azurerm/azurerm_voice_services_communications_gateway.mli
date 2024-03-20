(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type service_location

val service_location :
  ?allowed_media_source_address_prefixes:string prop list ->
  ?allowed_signaling_source_address_prefixes:string prop list ->
  ?esrp_addresses:string prop list ->
  location:string prop ->
  operator_addresses:string prop list ->
  unit ->
  service_location

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_voice_services_communications_gateway

val azurerm_voice_services_communications_gateway :
  ?api_bridge:string prop ->
  ?auto_generated_domain_name_label_scope:string prop ->
  ?emergency_dial_strings:string prop list ->
  ?id:string prop ->
  ?microsoft_teams_voicemail_pilot_number:string prop ->
  ?on_prem_mcp_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  codecs:string prop ->
  connectivity:string prop ->
  e911_type:string prop ->
  location:string prop ->
  name:string prop ->
  platforms:string prop list ->
  resource_group_name:string prop ->
  service_location:service_location list ->
  unit ->
  azurerm_voice_services_communications_gateway

val yojson_of_azurerm_voice_services_communications_gateway :
  azurerm_voice_services_communications_gateway -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?api_bridge:string prop ->
  ?auto_generated_domain_name_label_scope:string prop ->
  ?emergency_dial_strings:string prop list ->
  ?id:string prop ->
  ?microsoft_teams_voicemail_pilot_number:string prop ->
  ?on_prem_mcp_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  codecs:string prop ->
  connectivity:string prop ->
  e911_type:string prop ->
  location:string prop ->
  name:string prop ->
  platforms:string prop list ->
  resource_group_name:string prop ->
  service_location:service_location list ->
  string ->
  t

val make :
  ?api_bridge:string prop ->
  ?auto_generated_domain_name_label_scope:string prop ->
  ?emergency_dial_strings:string prop list ->
  ?id:string prop ->
  ?microsoft_teams_voicemail_pilot_number:string prop ->
  ?on_prem_mcp_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  codecs:string prop ->
  connectivity:string prop ->
  e911_type:string prop ->
  location:string prop ->
  name:string prop ->
  platforms:string prop list ->
  resource_group_name:string prop ->
  service_location:service_location list ->
  string ->
  t Tf_core.resource
