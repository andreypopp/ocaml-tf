(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_constraint__timeouts
type aws_servicecatalog_constraint

type t = private {
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
  t
