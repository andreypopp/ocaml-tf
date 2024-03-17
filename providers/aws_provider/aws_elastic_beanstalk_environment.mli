(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elastic_beanstalk_environment__setting

type aws_elastic_beanstalk_environment__all_settings = {
  name : string;  (** name *)
  namespace : string;  (** namespace *)
  resource : string;  (** resource *)
  value : string;  (** value *)
}

type aws_elastic_beanstalk_environment

val aws_elastic_beanstalk_environment :
  ?cname_prefix:string ->
  ?description:string ->
  ?id:string ->
  ?platform_arn:string ->
  ?poll_interval:string ->
  ?solution_stack_name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?template_name:string ->
  ?tier:string ->
  ?version_label:string ->
  ?wait_for_ready_timeout:string ->
  application:string ->
  name:string ->
  setting:aws_elastic_beanstalk_environment__setting list ->
  string ->
  unit
