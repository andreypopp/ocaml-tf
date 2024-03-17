(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_external_address__timeouts
type google_vmwareengine_external_address

type t = private {
  create_time : string prop;
  description : string prop;
  external_ip : string prop;
  id : string prop;
  internal_ip : string prop;
  name : string prop;
  parent : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

val google_vmwareengine_external_address :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_vmwareengine_external_address__timeouts ->
  internal_ip:string prop ->
  name:string prop ->
  parent:string prop ->
  string ->
  t
