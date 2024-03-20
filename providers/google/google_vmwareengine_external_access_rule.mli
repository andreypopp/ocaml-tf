(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination_ip_ranges

val destination_ip_ranges :
  ?external_address:string prop ->
  ?ip_address_range:string prop ->
  unit ->
  destination_ip_ranges

type source_ip_ranges

val source_ip_ranges :
  ?ip_address:string prop ->
  ?ip_address_range:string prop ->
  unit ->
  source_ip_ranges

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vmwareengine_external_access_rule

val google_vmwareengine_external_access_rule :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  action:string prop ->
  destination_ports:string prop list ->
  ip_protocol:string prop ->
  name:string prop ->
  parent:string prop ->
  priority:float prop ->
  source_ports:string prop list ->
  destination_ip_ranges:destination_ip_ranges list ->
  source_ip_ranges:source_ip_ranges list ->
  unit ->
  google_vmwareengine_external_access_rule

val yojson_of_google_vmwareengine_external_access_rule :
  google_vmwareengine_external_access_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  action : string prop;
  create_time : string prop;
  description : string prop;
  destination_ports : string list prop;
  id : string prop;
  ip_protocol : string prop;
  name : string prop;
  parent : string prop;
  priority : float prop;
  source_ports : string list prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  action:string prop ->
  destination_ports:string prop list ->
  ip_protocol:string prop ->
  name:string prop ->
  parent:string prop ->
  priority:float prop ->
  source_ports:string prop list ->
  destination_ip_ranges:destination_ip_ranges list ->
  source_ip_ranges:source_ip_ranges list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  action:string prop ->
  destination_ports:string prop list ->
  ip_protocol:string prop ->
  name:string prop ->
  parent:string prop ->
  priority:float prop ->
  source_ports:string prop list ->
  destination_ip_ranges:destination_ip_ranges list ->
  source_ip_ranges:source_ip_ranges list ->
  string ->
  t Tf_core.resource
