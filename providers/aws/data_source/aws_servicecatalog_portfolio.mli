(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_servicecatalog_portfolio

val aws_servicecatalog_portfolio :
  ?accept_language:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  id:string prop ->
  unit ->
  aws_servicecatalog_portfolio

val yojson_of_aws_servicecatalog_portfolio :
  aws_servicecatalog_portfolio -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accept_language : string prop;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  provider_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?accept_language:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  id:string prop ->
  string ->
  t

val make :
  ?accept_language:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  id:string prop ->
  string ->
  t Tf_core.resource
