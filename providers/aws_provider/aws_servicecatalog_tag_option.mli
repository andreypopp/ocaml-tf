(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_tag_option__timeouts
type aws_servicecatalog_tag_option

val aws_servicecatalog_tag_option :
  ?active:bool prop ->
  ?id:string prop ->
  ?timeouts:aws_servicecatalog_tag_option__timeouts ->
  key:string prop ->
  value:string prop ->
  string ->
  unit
