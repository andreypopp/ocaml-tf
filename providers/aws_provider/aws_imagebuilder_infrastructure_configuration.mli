(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_infrastructure_configuration__instance_metadata_options

type aws_imagebuilder_infrastructure_configuration__logging__s3_logs
type aws_imagebuilder_infrastructure_configuration__logging
type aws_imagebuilder_infrastructure_configuration

type t = private {
  arn : string prop;
  date_created : string prop;
  date_updated : string prop;
  description : string prop;
  id : string prop;
  instance_profile_name : string prop;
  instance_types : string list prop;
  key_pair : string prop;
  name : string prop;
  resource_tags : (string * string) list prop;
  security_group_ids : string list prop;
  sns_topic_arn : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  terminate_instance_on_failure : bool prop;
}

val aws_imagebuilder_infrastructure_configuration :
  ?description:string prop ->
  ?id:string prop ->
  ?instance_types:string prop list ->
  ?key_pair:string prop ->
  ?resource_tags:(string * string prop) list ->
  ?security_group_ids:string prop list ->
  ?sns_topic_arn:string prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?terminate_instance_on_failure:bool prop ->
  instance_profile_name:string prop ->
  name:string prop ->
  instance_metadata_options:
    aws_imagebuilder_infrastructure_configuration__instance_metadata_options
    list ->
  logging:aws_imagebuilder_infrastructure_configuration__logging list ->
  string ->
  t
