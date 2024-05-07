(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_route53recoveryreadiness_cell

val aws_route53recoveryreadiness_cell :
  ?cells:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cell_name:string prop ->
  unit ->
  aws_route53recoveryreadiness_cell

val yojson_of_aws_route53recoveryreadiness_cell :
  aws_route53recoveryreadiness_cell -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cell_name : string prop;
  cells : string list prop;
  id : string prop;
  parent_readiness_scopes : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?cells:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cell_name:string prop ->
  string ->
  t

val make :
  ?cells:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cell_name:string prop ->
  string ->
  t Tf_core.resource
