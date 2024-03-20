(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_servicecatalog_organizations_access

val aws_servicecatalog_organizations_access :
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  unit ->
  aws_servicecatalog_organizations_access

val yojson_of_aws_servicecatalog_organizations_access :
  aws_servicecatalog_organizations_access -> json

(** RESOURCE REGISTRATION *)

type t = private { enabled : bool prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  string ->
  t Tf_core.resource
