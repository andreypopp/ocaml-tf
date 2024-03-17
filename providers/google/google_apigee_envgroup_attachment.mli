(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_envgroup_attachment__timeouts
type google_apigee_envgroup_attachment

type t = private {
  envgroup_id : string prop;
  environment : string prop;
  id : string prop;
  name : string prop;
}

val google_apigee_envgroup_attachment :
  ?id:string prop ->
  ?timeouts:google_apigee_envgroup_attachment__timeouts ->
  envgroup_id:string prop ->
  environment:string prop ->
  string ->
  t
