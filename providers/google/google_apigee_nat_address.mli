(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_nat_address__timeouts
type google_apigee_nat_address

type t = private {
  id : string prop;
  instance_id : string prop;
  ip_address : string prop;
  name : string prop;
  state : string prop;
}

val google_apigee_nat_address :
  ?id:string prop ->
  ?timeouts:google_apigee_nat_address__timeouts ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t
