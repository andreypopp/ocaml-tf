(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type details = {
  constraint_id : string prop;  (** constraint_id *)
  description : string prop;  (** description *)
  owner : string prop;  (** owner *)
  portfolio_id : string prop;  (** portfolio_id *)
  product_id : string prop;  (** product_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_servicecatalog_portfolio_constraints

val aws_servicecatalog_portfolio_constraints :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?product_id:string prop ->
  ?timeouts:timeouts ->
  portfolio_id:string prop ->
  unit ->
  aws_servicecatalog_portfolio_constraints

val yojson_of_aws_servicecatalog_portfolio_constraints :
  aws_servicecatalog_portfolio_constraints -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accept_language : string prop;
  details : details list prop;
  id : string prop;
  portfolio_id : string prop;
  product_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accept_language:string prop ->
  ?id:string prop ->
  ?product_id:string prop ->
  ?timeouts:timeouts ->
  portfolio_id:string prop ->
  string ->
  t

val make :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?product_id:string prop ->
  ?timeouts:timeouts ->
  portfolio_id:string prop ->
  string ->
  t Tf_core.resource
