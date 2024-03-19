(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_servicecatalog_tag_option

val aws_servicecatalog_tag_option :
  ?active:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  key:string prop ->
  value:string prop ->
  unit ->
  aws_servicecatalog_tag_option

val yojson_of_aws_servicecatalog_tag_option :
  aws_servicecatalog_tag_option -> json

(** RESOURCE REGISTRATION *)

type t = private {
  active : bool prop;
  id : string prop;
  key : string prop;
  owner : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?active:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  key:string prop ->
  value:string prop ->
  string ->
  t
