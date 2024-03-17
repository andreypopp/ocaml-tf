(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_sharedflow_deployment__timeouts
type google_apigee_sharedflow_deployment

val google_apigee_sharedflow_deployment :
  ?id:string prop ->
  ?service_account:string prop ->
  ?timeouts:google_apigee_sharedflow_deployment__timeouts ->
  environment:string prop ->
  org_id:string prop ->
  revision:string prop ->
  sharedflow_id:string prop ->
  string ->
  unit
