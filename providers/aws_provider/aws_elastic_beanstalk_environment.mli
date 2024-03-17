(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elastic_beanstalk_environment__setting

type aws_elastic_beanstalk_environment__all_settings = {
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
  resource : string prop;  (** resource *)
  value : string prop;  (** value *)
}

type aws_elastic_beanstalk_environment

val aws_elastic_beanstalk_environment :
  ?cname_prefix:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?platform_arn:string prop ->
  ?poll_interval:string prop ->
  ?solution_stack_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?template_name:string prop ->
  ?tier:string prop ->
  ?version_label:string prop ->
  ?wait_for_ready_timeout:string prop ->
  application:string prop ->
  name:string prop ->
  setting:aws_elastic_beanstalk_environment__setting list ->
  string ->
  unit
