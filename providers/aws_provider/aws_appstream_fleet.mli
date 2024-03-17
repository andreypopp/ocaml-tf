(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_fleet__compute_capacity
type aws_appstream_fleet__domain_join_info
type aws_appstream_fleet__vpc_config
type aws_appstream_fleet

val aws_appstream_fleet :
  ?idle_disconnect_timeout_in_seconds:float ->
  ?tags:(string * string) list ->
  instance_type:string ->
  name:string ->
  compute_capacity:aws_appstream_fleet__compute_capacity list ->
  domain_join_info:aws_appstream_fleet__domain_join_info list ->
  vpc_config:aws_appstream_fleet__vpc_config list ->
  string ->
  unit
