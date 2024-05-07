(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_location_route_calculator

val aws_location_route_calculator :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  calculator_name:string prop ->
  unit ->
  aws_location_route_calculator

val yojson_of_aws_location_route_calculator :
  aws_location_route_calculator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  calculator_arn : string prop;
  calculator_name : string prop;
  create_time : string prop;
  data_source : string prop;
  description : string prop;
  id : string prop;
  tags : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  calculator_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  calculator_name:string prop ->
  string ->
  t Tf_core.resource
