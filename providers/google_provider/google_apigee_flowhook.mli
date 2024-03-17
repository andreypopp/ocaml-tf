(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_flowhook__timeouts
type google_apigee_flowhook

type t = private {
  continue_on_error : bool prop;
  description : string prop;
  environment : string prop;
  flow_hook_point : string prop;
  id : string prop;
  org_id : string prop;
  sharedflow : string prop;
}

val google_apigee_flowhook :
  ?continue_on_error:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_apigee_flowhook__timeouts ->
  environment:string prop ->
  flow_hook_point:string prop ->
  org_id:string prop ->
  sharedflow:string prop ->
  string ->
  t
