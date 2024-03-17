(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_image_builder__access_endpoint
type aws_appstream_image_builder__domain_join_info
type aws_appstream_image_builder__vpc_config
type aws_appstream_image_builder

val aws_appstream_image_builder :
  ?tags:(string * string) list ->
  instance_type:string ->
  name:string ->
  access_endpoint:aws_appstream_image_builder__access_endpoint list ->
  domain_join_info:aws_appstream_image_builder__domain_join_info list ->
  vpc_config:aws_appstream_image_builder__vpc_config list ->
  string ->
  unit
