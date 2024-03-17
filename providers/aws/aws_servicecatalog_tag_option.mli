(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_tag_option__timeouts
type aws_servicecatalog_tag_option

type t = private {
  active : bool prop;
  id : string prop;
  key : string prop;
  owner : string prop;
  value : string prop;
}

val aws_servicecatalog_tag_option :
  ?active:bool prop ->
  ?id:string prop ->
  ?timeouts:aws_servicecatalog_tag_option__timeouts ->
  key:string prop ->
  value:string prop ->
  string ->
  t
