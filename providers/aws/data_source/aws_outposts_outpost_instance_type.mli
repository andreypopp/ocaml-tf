(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_outposts_outpost_instance_type

val aws_outposts_outpost_instance_type :
  ?id:string prop ->
  ?instance_type:string prop ->
  ?preferred_instance_types:string prop list ->
  arn:string prop ->
  unit ->
  aws_outposts_outpost_instance_type

val yojson_of_aws_outposts_outpost_instance_type :
  aws_outposts_outpost_instance_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  instance_type : string prop;
  preferred_instance_types : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?preferred_instance_types:string prop list ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?instance_type:string prop ->
  ?preferred_instance_types:string prop list ->
  arn:string prop ->
  string ->
  t Tf_core.resource
