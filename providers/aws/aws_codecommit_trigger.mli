(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codecommit_trigger__trigger
type aws_codecommit_trigger

type t = private {
  configuration_id : string prop;
  id : string prop;
  repository_name : string prop;
}

val aws_codecommit_trigger :
  ?id:string prop ->
  repository_name:string prop ->
  trigger:aws_codecommit_trigger__trigger list ->
  string ->
  t
