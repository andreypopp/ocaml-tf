(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_apigee_flowhook

val google_apigee_flowhook :
  ?continue_on_error:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  environment:string prop ->
  flow_hook_point:string prop ->
  org_id:string prop ->
  sharedflow:string prop ->
  unit ->
  google_apigee_flowhook

val yojson_of_google_apigee_flowhook : google_apigee_flowhook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  continue_on_error : bool prop;
  description : string prop;
  environment : string prop;
  flow_hook_point : string prop;
  id : string prop;
  org_id : string prop;
  sharedflow : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?continue_on_error:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  environment:string prop ->
  flow_hook_point:string prop ->
  org_id:string prop ->
  sharedflow:string prop ->
  string ->
  t
