(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_image_builder__access_endpoint
type aws_appstream_image_builder__domain_join_info
type aws_appstream_image_builder__vpc_config
type aws_appstream_image_builder

val aws_appstream_image_builder :
  ?appstream_agent_version:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?enable_default_internet_access:bool prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?image_arn:string prop ->
  ?image_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_type:string prop ->
  name:string prop ->
  access_endpoint:aws_appstream_image_builder__access_endpoint list ->
  domain_join_info:aws_appstream_image_builder__domain_join_info list ->
  vpc_config:aws_appstream_image_builder__vpc_config list ->
  string ->
  unit
