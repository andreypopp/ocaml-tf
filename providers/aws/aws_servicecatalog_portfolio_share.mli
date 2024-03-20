(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_servicecatalog_portfolio_share

val aws_servicecatalog_portfolio_share :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?share_principals:bool prop ->
  ?share_tag_options:bool prop ->
  ?wait_for_acceptance:bool prop ->
  ?timeouts:timeouts ->
  portfolio_id:string prop ->
  principal_id:string prop ->
  type_:string prop ->
  unit ->
  aws_servicecatalog_portfolio_share

val yojson_of_aws_servicecatalog_portfolio_share :
  aws_servicecatalog_portfolio_share -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accept_language : string prop;
  accepted : bool prop;
  id : string prop;
  portfolio_id : string prop;
  principal_id : string prop;
  share_principals : bool prop;
  share_tag_options : bool prop;
  type_ : string prop;
  wait_for_acceptance : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?accept_language:string prop ->
  ?id:string prop ->
  ?share_principals:bool prop ->
  ?share_tag_options:bool prop ->
  ?wait_for_acceptance:bool prop ->
  ?timeouts:timeouts ->
  portfolio_id:string prop ->
  principal_id:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?share_principals:bool prop ->
  ?share_tag_options:bool prop ->
  ?wait_for_acceptance:bool prop ->
  ?timeouts:timeouts ->
  portfolio_id:string prop ->
  principal_id:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
