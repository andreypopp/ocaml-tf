(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_security_gateway_security_policy__timeouts
type google_network_security_gateway_security_policy

type t = private {
  create_time : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  update_time : string prop;
}

val google_network_security_gateway_security_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:google_network_security_gateway_security_policy__timeouts ->
  name:string prop ->
  string ->
  t
