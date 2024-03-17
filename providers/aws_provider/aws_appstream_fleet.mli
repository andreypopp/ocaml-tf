(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_fleet__compute_capacity
type aws_appstream_fleet__domain_join_info
type aws_appstream_fleet__vpc_config
type aws_appstream_fleet

val aws_appstream_fleet :
  ?description:string ->
  ?disconnect_timeout_in_seconds:float ->
  ?display_name:string ->
  ?enable_default_internet_access:bool ->
  ?fleet_type:string ->
  ?iam_role_arn:string ->
  ?id:string ->
  ?idle_disconnect_timeout_in_seconds:float ->
  ?image_arn:string ->
  ?image_name:string ->
  ?max_user_duration_in_seconds:float ->
  ?stream_view:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  instance_type:string ->
  name:string ->
  compute_capacity:aws_appstream_fleet__compute_capacity list ->
  domain_join_info:aws_appstream_fleet__domain_join_info list ->
  vpc_config:aws_appstream_fleet__vpc_config list ->
  string ->
  unit
