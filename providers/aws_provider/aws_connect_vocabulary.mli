(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_vocabulary__timeouts
type aws_connect_vocabulary

val aws_connect_vocabulary :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_connect_vocabulary__timeouts ->
  content:string ->
  instance_id:string ->
  language_code:string ->
  name:string ->
  string ->
  unit
