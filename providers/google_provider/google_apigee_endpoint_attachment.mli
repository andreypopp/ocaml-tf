(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_endpoint_attachment__timeouts
type google_apigee_endpoint_attachment

val google_apigee_endpoint_attachment :
  ?id:string prop ->
  ?timeouts:google_apigee_endpoint_attachment__timeouts ->
  endpoint_attachment_id:string prop ->
  location:string prop ->
  org_id:string prop ->
  service_attachment:string prop ->
  string ->
  unit
