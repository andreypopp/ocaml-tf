(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_scc_event_threat_detection_custom_module

val google_scc_event_threat_detection_custom_module :
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  config:string prop ->
  enablement_state:string prop ->
  organization:string prop ->
  type_:string prop ->
  unit ->
  google_scc_event_threat_detection_custom_module

val yojson_of_google_scc_event_threat_detection_custom_module :
  google_scc_event_threat_detection_custom_module -> json

(** RESOURCE REGISTRATION *)

type t = private {
  config : string prop;
  display_name : string prop;
  enablement_state : string prop;
  id : string prop;
  last_editor : string prop;
  name : string prop;
  organization : string prop;
  type_ : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  config:string prop ->
  enablement_state:string prop ->
  organization:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  config:string prop ->
  enablement_state:string prop ->
  organization:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
