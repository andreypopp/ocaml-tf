(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ram_resource_share

val aws_ram_resource_share :
  ?allow_external_principals:bool prop ->
  ?id:string prop ->
  ?permission_arns:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  aws_ram_resource_share

val yojson_of_aws_ram_resource_share : aws_ram_resource_share -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_external_principals : bool prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  permission_arns : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_external_principals:bool prop ->
  ?id:string prop ->
  ?permission_arns:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?allow_external_principals:bool prop ->
  ?id:string prop ->
  ?permission_arns:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
