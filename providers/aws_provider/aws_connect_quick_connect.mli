(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_quick_connect__quick_connect_config__phone_config
type aws_connect_quick_connect__quick_connect_config__queue_config
type aws_connect_quick_connect__quick_connect_config__user_config
type aws_connect_quick_connect__quick_connect_config
type aws_connect_quick_connect

val aws_connect_quick_connect :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  instance_id:string ->
  name:string ->
  quick_connect_config:
    aws_connect_quick_connect__quick_connect_config list ->
  string ->
  unit
