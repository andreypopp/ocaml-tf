(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration = { style : string prop  (** style *) }
type aws_location_map

val aws_location_map :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  map_name:string prop ->
  unit ->
  aws_location_map

val yojson_of_aws_location_map : aws_location_map -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  configuration : configuration list prop;
  create_time : string prop;
  description : string prop;
  id : string prop;
  map_arn : string prop;
  map_name : string prop;
  tags : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  map_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  map_name:string prop ->
  string ->
  t Tf_core.resource
