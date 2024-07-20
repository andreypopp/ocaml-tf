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

type google_scc_management_organization_event_threat_detection_custom_module

val google_scc_management_organization_event_threat_detection_custom_module :
  ?config:string prop ->
  ?display_name:string prop ->
  ?enablement_state:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  organization:string prop ->
  unit ->
  google_scc_management_organization_event_threat_detection_custom_module

val yojson_of_google_scc_management_organization_event_threat_detection_custom_module :
  google_scc_management_organization_event_threat_detection_custom_module ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  config : string prop;
  display_name : string prop;
  enablement_state : string prop;
  id : string prop;
  last_editor : string prop;
  location : string prop;
  name : string prop;
  organization : string prop;
  type_ : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?config:string prop ->
  ?display_name:string prop ->
  ?enablement_state:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  organization:string prop ->
  string ->
  t

val make :
  ?config:string prop ->
  ?display_name:string prop ->
  ?enablement_state:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  organization:string prop ->
  string ->
  t Tf_core.resource
