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

type aws_main_route_table_association

val aws_main_route_table_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  vpc_id:string prop ->
  unit ->
  aws_main_route_table_association

val yojson_of_aws_main_route_table_association :
  aws_main_route_table_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  original_route_table_id : string prop;
  route_table_id : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  vpc_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  vpc_id:string prop ->
  string ->
  t Tf_core.resource
