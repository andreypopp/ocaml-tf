(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_constraint__timeouts
type aws_servicecatalog_constraint

val aws_servicecatalog_constraint :
  ?accept_language:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:aws_servicecatalog_constraint__timeouts ->
  parameters:string prop ->
  portfolio_id:string prop ->
  product_id:string prop ->
  type_:string prop ->
  string ->
  unit
