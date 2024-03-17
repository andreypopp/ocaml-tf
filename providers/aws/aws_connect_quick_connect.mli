(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_quick_connect__quick_connect_config__phone_config
type aws_connect_quick_connect__quick_connect_config__queue_config
type aws_connect_quick_connect__quick_connect_config__user_config
type aws_connect_quick_connect__quick_connect_config
type aws_connect_quick_connect

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  quick_connect_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_connect_quick_connect :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  quick_connect_config:
    aws_connect_quick_connect__quick_connect_config list ->
  string ->
  t
