(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_vocabulary__timeouts
type aws_connect_vocabulary

type t = private {
  arn : string prop;
  content : string prop;
  failure_reason : string prop;
  id : string prop;
  instance_id : string prop;
  language_code : string prop;
  last_modified_time : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vocabulary_id : string prop;
}

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
  t
