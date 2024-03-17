(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_portfolio__timeouts
type aws_servicecatalog_portfolio

type t = private {
  arn : string prop;
  created_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  provider_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_servicecatalog_portfolio :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_servicecatalog_portfolio__timeouts ->
  name:string prop ->
  provider_name:string prop ->
  string ->
  t
