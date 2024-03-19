(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_route_table_association

val aws_route_table_association :
  ?gateway_id:string prop ->
  ?id:string prop ->
  ?subnet_id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  unit ->
  aws_route_table_association

val yojson_of_aws_route_table_association :
  aws_route_table_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  gateway_id : string prop;
  id : string prop;
  route_table_id : string prop;
  subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?gateway_id:string prop ->
  ?id:string prop ->
  ?subnet_id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  string ->
  t
