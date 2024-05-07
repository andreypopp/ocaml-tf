(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_outposts_outpost

val aws_outposts_outpost :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?owner_id:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  aws_outposts_outpost

val yojson_of_aws_outposts_outpost : aws_outposts_outpost -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zone : string prop;
  availability_zone_id : string prop;
  description : string prop;
  id : string prop;
  lifecycle_status : string prop;
  name : string prop;
  owner_id : string prop;
  site_arn : string prop;
  site_id : string prop;
  supported_hardware_type : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?owner_id:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?owner_id:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
