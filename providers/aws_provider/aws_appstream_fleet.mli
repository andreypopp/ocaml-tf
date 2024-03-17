(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_fleet__compute_capacity
type aws_appstream_fleet__domain_join_info
type aws_appstream_fleet__vpc_config
type aws_appstream_fleet

val aws_appstream_fleet :
  ?description:string prop ->
  ?disconnect_timeout_in_seconds:float prop ->
  ?display_name:string prop ->
  ?enable_default_internet_access:bool prop ->
  ?fleet_type:string prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?idle_disconnect_timeout_in_seconds:float prop ->
  ?image_arn:string prop ->
  ?image_name:string prop ->
  ?max_user_duration_in_seconds:float prop ->
  ?stream_view:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_type:string prop ->
  name:string prop ->
  compute_capacity:aws_appstream_fleet__compute_capacity list ->
  domain_join_info:aws_appstream_fleet__domain_join_info list ->
  vpc_config:aws_appstream_fleet__vpc_config list ->
  string ->
  unit
