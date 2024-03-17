(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_flowhook__timeouts
type google_apigee_flowhook

val google_apigee_flowhook :
  ?continue_on_error:bool ->
  ?description:string ->
  ?timeouts:google_apigee_flowhook__timeouts ->
  environment:string ->
  flow_hook_point:string ->
  org_id:string ->
  sharedflow:string ->
  string ->
  unit
