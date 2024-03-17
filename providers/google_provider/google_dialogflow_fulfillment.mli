(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dialogflow_fulfillment__features
type google_dialogflow_fulfillment__generic_web_service
type google_dialogflow_fulfillment__timeouts
type google_dialogflow_fulfillment

val google_dialogflow_fulfillment :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_dialogflow_fulfillment__timeouts ->
  display_name:string prop ->
  features:google_dialogflow_fulfillment__features list ->
  generic_web_service:
    google_dialogflow_fulfillment__generic_web_service list ->
  string ->
  unit
