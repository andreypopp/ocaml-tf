(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vmwareengine_external_address

val google_vmwareengine_external_address :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  internal_ip:string prop ->
  name:string prop ->
  parent:string prop ->
  unit ->
  google_vmwareengine_external_address

val yojson_of_google_vmwareengine_external_address :
  google_vmwareengine_external_address -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  internal_ip:string prop ->
  name:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  internal_ip:string prop ->
  name:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource
