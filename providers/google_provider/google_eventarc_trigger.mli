(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_eventarc_trigger__destination__cloud_run_service
type google_eventarc_trigger__destination__gke
type google_eventarc_trigger__destination__http_endpoint
type google_eventarc_trigger__destination__network_config
type google_eventarc_trigger__destination
type google_eventarc_trigger__matching_criteria
type google_eventarc_trigger__timeouts
type google_eventarc_trigger__transport__pubsub
type google_eventarc_trigger__transport
type google_eventarc_trigger

val google_eventarc_trigger :
  ?channel:string ->
  ?event_data_content_type:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?service_account:string ->
  ?timeouts:google_eventarc_trigger__timeouts ->
  location:string ->
  name:string ->
  destination:google_eventarc_trigger__destination list ->
  matching_criteria:google_eventarc_trigger__matching_criteria list ->
  transport:google_eventarc_trigger__transport list ->
  string ->
  unit
