(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_product_portfolio_association__timeouts
type aws_servicecatalog_product_portfolio_association

val aws_servicecatalog_product_portfolio_association :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?source_portfolio_id:string prop ->
  ?timeouts:
    aws_servicecatalog_product_portfolio_association__timeouts ->
  portfolio_id:string prop ->
  product_id:string prop ->
  string ->
  unit
