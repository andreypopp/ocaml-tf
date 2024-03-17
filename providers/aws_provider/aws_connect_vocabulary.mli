(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_vocabulary__timeouts
type aws_connect_vocabulary

val aws_connect_vocabulary :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_connect_vocabulary__timeouts ->
  content:string prop ->
  instance_id:string prop ->
  language_code:string prop ->
  name:string prop ->
  string ->
  unit
