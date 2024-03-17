(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_infrastructure_configuration__instance_metadata_options

type aws_imagebuilder_infrastructure_configuration__logging__s3_logs
type aws_imagebuilder_infrastructure_configuration__logging
type aws_imagebuilder_infrastructure_configuration

val aws_imagebuilder_infrastructure_configuration :
  ?description:string ->
  ?id:string ->
  ?instance_types:string list ->
  ?key_pair:string ->
  ?resource_tags:(string * string) list ->
  ?security_group_ids:string list ->
  ?sns_topic_arn:string ->
  ?subnet_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?terminate_instance_on_failure:bool ->
  instance_profile_name:string ->
  name:string ->
  instance_metadata_options:
    aws_imagebuilder_infrastructure_configuration__instance_metadata_options
    list ->
  logging:aws_imagebuilder_infrastructure_configuration__logging list ->
  string ->
  unit
