(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_outposts_outposts

val aws_outposts_outposts :
  ?availability_zone:string prop ->
  ?availability_zone_id:string prop ->
  ?id:string prop ->
  ?owner_id:string prop ->
  ?site_id:string prop ->
  unit ->
  aws_outposts_outposts

val yojson_of_aws_outposts_outposts : aws_outposts_outposts -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arns : string list prop;
  availability_zone : string prop;
  availability_zone_id : string prop;
  id : string prop;
  ids : string list prop;
  owner_id : string prop;
  site_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?availability_zone:string prop ->
  ?availability_zone_id:string prop ->
  ?id:string prop ->
  ?owner_id:string prop ->
  ?site_id:string prop ->
  string ->
  t

val make :
  ?availability_zone:string prop ->
  ?availability_zone_id:string prop ->
  ?id:string prop ->
  ?owner_id:string prop ->
  ?site_id:string prop ->
  string ->
  t Tf_core.resource
