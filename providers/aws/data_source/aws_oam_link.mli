(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_oam_link

val aws_oam_link :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  link_identifier:string prop ->
  unit ->
  aws_oam_link

val yojson_of_aws_oam_link : aws_oam_link -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  label : string prop;
  label_template : string prop;
  link_id : string prop;
  link_identifier : string prop;
  resource_types : string list prop;
  sink_arn : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  link_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  link_identifier:string prop ->
  string ->
  t Tf_core.resource
