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

type aws_eip_domain_name

val aws_eip_domain_name :
  ?timeouts:timeouts ->
  allocation_id:string prop ->
  domain_name:string prop ->
  unit ->
  aws_eip_domain_name

val yojson_of_aws_eip_domain_name : aws_eip_domain_name -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allocation_id : string prop;
  domain_name : string prop;
  id : string prop;
  ptr_record : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?timeouts:timeouts ->
  allocation_id:string prop ->
  domain_name:string prop ->
  string ->
  t

val make :
  ?timeouts:timeouts ->
  allocation_id:string prop ->
  domain_name:string prop ->
  string ->
  t Tf_core.resource
