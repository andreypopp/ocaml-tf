(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_portfolio_share__timeouts
type aws_servicecatalog_portfolio_share

val aws_servicecatalog_portfolio_share :
  ?accept_language:string ->
  ?id:string ->
  ?share_principals:bool ->
  ?share_tag_options:bool ->
  ?wait_for_acceptance:bool ->
  ?timeouts:aws_servicecatalog_portfolio_share__timeouts ->
  portfolio_id:string ->
  principal_id:string ->
  type_:string ->
  string ->
  unit
