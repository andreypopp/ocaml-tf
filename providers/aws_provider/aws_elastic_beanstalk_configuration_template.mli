(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elastic_beanstalk_configuration_template__setting
type aws_elastic_beanstalk_configuration_template

val aws_elastic_beanstalk_configuration_template :
  ?description:string ->
  ?environment_id:string ->
  ?id:string ->
  ?solution_stack_name:string ->
  application:string ->
  name:string ->
  setting:aws_elastic_beanstalk_configuration_template__setting list ->
  string ->
  unit
