(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration

val configuration : style:string prop -> unit -> configuration

type aws_location_map

val aws_location_map :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  map_name:string prop ->
  configuration:configuration list ->
  unit ->
  aws_location_map

val yojson_of_aws_location_map : aws_location_map -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  map_arn : string prop;
  map_name : string prop;
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
  map_name:string prop ->
  configuration:configuration list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  map_name:string prop ->
  configuration:configuration list ->
  string ->
  t Tf_core.resource
