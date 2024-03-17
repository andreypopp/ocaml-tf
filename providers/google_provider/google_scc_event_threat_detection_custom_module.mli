(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_event_threat_detection_custom_module__timeouts
type google_scc_event_threat_detection_custom_module

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

val google_scc_event_threat_detection_custom_module :
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:google_scc_event_threat_detection_custom_module__timeouts ->
  config:string prop ->
  enablement_state:string prop ->
  organization:string prop ->
  type_:string prop ->
  string ->
  t
