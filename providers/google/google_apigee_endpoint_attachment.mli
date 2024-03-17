(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_endpoint_attachment__timeouts
type google_apigee_endpoint_attachment

type t = private {
  connection_state : string prop;
  endpoint_attachment_id : string prop;
  host : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  org_id : string prop;
  service_attachment : string prop;
}

val google_apigee_endpoint_attachment :
  ?id:string prop ->
  ?timeouts:google_apigee_endpoint_attachment__timeouts ->
  endpoint_attachment_id:string prop ->
  location:string prop ->
  org_id:string prop ->
  service_attachment:string prop ->
  string ->
  t
