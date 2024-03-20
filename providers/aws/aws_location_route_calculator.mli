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

type aws_location_route_calculator

val aws_location_route_calculator :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  calculator_name:string prop ->
  data_source:string prop ->
  unit ->
  aws_location_route_calculator

val yojson_of_aws_location_route_calculator :
  aws_location_route_calculator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  calculator_arn : string prop;
  calculator_name : string prop;
  create_time : string prop;
  data_source : string prop;
  description : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  calculator_name:string prop ->
  data_source:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  calculator_name:string prop ->
  data_source:string prop ->
  string ->
  t Tf_core.resource
