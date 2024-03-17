(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_principal_portfolio_association__timeouts
type aws_servicecatalog_principal_portfolio_association

val aws_servicecatalog_principal_portfolio_association :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?principal_type:string prop ->
  ?timeouts:
    aws_servicecatalog_principal_portfolio_association__timeouts ->
  portfolio_id:string prop ->
  principal_arn:string prop ->
  string ->
  unit
