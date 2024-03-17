(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_portfolio__timeouts
type aws_servicecatalog_portfolio

val aws_servicecatalog_portfolio :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_servicecatalog_portfolio__timeouts ->
  name:string ->
  provider_name:string ->
  string ->
  unit
