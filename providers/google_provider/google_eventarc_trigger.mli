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

type t = private {
  channel : string prop;
  conditions : (string * string) list prop;
  create_time : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  event_data_content_type : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

val google_eventarc_trigger :
  ?channel:string prop ->
  ?event_data_content_type:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?service_account:string prop ->
  ?timeouts:google_eventarc_trigger__timeouts ->
  location:string prop ->
  name:string prop ->
  destination:google_eventarc_trigger__destination list ->
  matching_criteria:google_eventarc_trigger__matching_criteria list ->
  transport:google_eventarc_trigger__transport list ->
  string ->
  t
