(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_instance_attachment__timeouts
type google_apigee_instance_attachment

type t = private {
  environment : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
}

val google_apigee_instance_attachment :
  ?id:string prop ->
  ?timeouts:google_apigee_instance_attachment__timeouts ->
  environment:string prop ->
  instance_id:string prop ->
  string ->
  t
