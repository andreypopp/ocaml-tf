(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_ids_endpoint__timeouts
type google_cloud_ids_endpoint

type t = private {
  create_time : string prop;
  description : string prop;
  endpoint_forwarding_rule : string prop;
  endpoint_ip : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  severity : string prop;
  threat_exceptions : string list prop;
  update_time : string prop;
}

val google_cloud_ids_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?threat_exceptions:string prop list ->
  ?timeouts:google_cloud_ids_endpoint__timeouts ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  severity:string prop ->
  string ->
  t
