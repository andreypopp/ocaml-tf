(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_servicecatalog_constraint

val aws_servicecatalog_constraint :
  ?accept_language:string prop ->
  ?description:string prop ->
  ?timeouts:timeouts ->
  id:string prop ->
  unit ->
  aws_servicecatalog_constraint

val yojson_of_aws_servicecatalog_constraint :
  aws_servicecatalog_constraint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accept_language : string prop;
  description : string prop;
  id : string prop;
  owner : string prop;
  parameters : string prop;
  portfolio_id : string prop;
  product_id : string prop;
  status : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accept_language:string prop ->
  ?description:string prop ->
  ?timeouts:timeouts ->
  id:string prop ->
  string ->
  t

val make :
  ?accept_language:string prop ->
  ?description:string prop ->
  ?timeouts:timeouts ->
  id:string prop ->
  string ->
  t Tf_core.resource
