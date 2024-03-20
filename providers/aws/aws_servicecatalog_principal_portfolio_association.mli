(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type aws_servicecatalog_principal_portfolio_association

val aws_servicecatalog_principal_portfolio_association :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?principal_type:string prop ->
  ?timeouts:timeouts ->
  portfolio_id:string prop ->
  principal_arn:string prop ->
  unit ->
  aws_servicecatalog_principal_portfolio_association

val yojson_of_aws_servicecatalog_principal_portfolio_association :
  aws_servicecatalog_principal_portfolio_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accept_language : string prop;
  id : string prop;
  portfolio_id : string prop;
  principal_arn : string prop;
  principal_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accept_language:string prop ->
  ?id:string prop ->
  ?principal_type:string prop ->
  ?timeouts:timeouts ->
  portfolio_id:string prop ->
  principal_arn:string prop ->
  string ->
  t

val make :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?principal_type:string prop ->
  ?timeouts:timeouts ->
  portfolio_id:string prop ->
  principal_arn:string prop ->
  string ->
  t Tf_core.resource
