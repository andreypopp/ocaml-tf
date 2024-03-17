(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_principal_portfolio_association__timeouts
type aws_servicecatalog_principal_portfolio_association

val aws_servicecatalog_principal_portfolio_association :
  ?accept_language:string ->
  ?id:string ->
  ?principal_type:string ->
  ?timeouts:
    aws_servicecatalog_principal_portfolio_association__timeouts ->
  portfolio_id:string ->
  principal_arn:string ->
  string ->
  unit
