(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_portfolio_share__timeouts
type aws_servicecatalog_portfolio_share

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

val aws_servicecatalog_portfolio_share :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?share_principals:bool prop ->
  ?share_tag_options:bool prop ->
  ?wait_for_acceptance:bool prop ->
  ?timeouts:aws_servicecatalog_portfolio_share__timeouts ->
  portfolio_id:string prop ->
  principal_id:string prop ->
  type_:string prop ->
  string ->
  t
