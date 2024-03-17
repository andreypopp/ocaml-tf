(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_envgroup__timeouts
type google_apigee_envgroup

type t = private {
  hostnames : string list prop;
  id : string prop;
  name : string prop;
  org_id : string prop;
}

val google_apigee_envgroup :
  ?hostnames:string prop list ->
  ?id:string prop ->
  ?timeouts:google_apigee_envgroup__timeouts ->
  name:string prop ->
  org_id:string prop ->
  string ->
  t
