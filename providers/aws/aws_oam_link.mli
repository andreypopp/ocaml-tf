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

type aws_oam_link

val aws_oam_link :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  label_template:string prop ->
  resource_types:string prop list ->
  sink_identifier:string prop ->
  unit ->
  aws_oam_link

val yojson_of_aws_oam_link : aws_oam_link -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  label : string prop;
  label_template : string prop;
  link_id : string prop;
  resource_types : string list prop;
  sink_arn : string prop;
  sink_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  label_template:string prop ->
  resource_types:string prop list ->
  sink_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  label_template:string prop ->
  resource_types:string prop list ->
  sink_identifier:string prop ->
  string ->
  t Tf_core.resource
