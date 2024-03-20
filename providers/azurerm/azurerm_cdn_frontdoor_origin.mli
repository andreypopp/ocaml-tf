(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type private_link

val private_link :
  ?request_message:string prop ->
  ?target_type:string prop ->
  location:string prop ->
  private_link_target_id:string prop ->
  unit ->
  private_link

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cdn_frontdoor_origin

val azurerm_cdn_frontdoor_origin :
  ?enabled:bool prop ->
  ?health_probes_enabled:bool prop ->
  ?http_port:float prop ->
  ?https_port:float prop ->
  ?id:string prop ->
  ?origin_host_header:string prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_origin_group_id:string prop ->
  certificate_name_check_enabled:bool prop ->
  host_name:string prop ->
  name:string prop ->
  private_link:private_link list ->
  unit ->
  azurerm_cdn_frontdoor_origin

val yojson_of_azurerm_cdn_frontdoor_origin :
  azurerm_cdn_frontdoor_origin -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cdn_frontdoor_origin_group_id : string prop;
  certificate_name_check_enabled : bool prop;
  enabled : bool prop;
  health_probes_enabled : bool prop;
  host_name : string prop;
  http_port : float prop;
  https_port : float prop;
  id : string prop;
  name : string prop;
  origin_host_header : string prop;
  priority : float prop;
  weight : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?health_probes_enabled:bool prop ->
  ?http_port:float prop ->
  ?https_port:float prop ->
  ?id:string prop ->
  ?origin_host_header:string prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_origin_group_id:string prop ->
  certificate_name_check_enabled:bool prop ->
  host_name:string prop ->
  name:string prop ->
  private_link:private_link list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?health_probes_enabled:bool prop ->
  ?http_port:float prop ->
  ?https_port:float prop ->
  ?id:string prop ->
  ?origin_host_header:string prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  ?timeouts:timeouts ->
  cdn_frontdoor_origin_group_id:string prop ->
  certificate_name_check_enabled:bool prop ->
  host_name:string prop ->
  name:string prop ->
  private_link:private_link list ->
  string ->
  t Tf_core.resource
