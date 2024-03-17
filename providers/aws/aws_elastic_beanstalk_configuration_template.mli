(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elastic_beanstalk_configuration_template__setting
type aws_elastic_beanstalk_configuration_template

type t = private {
  application : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  name : string prop;
  solution_stack_name : string prop;
}

val aws_elastic_beanstalk_configuration_template :
  ?description:string prop ->
  ?environment_id:string prop ->
  ?id:string prop ->
  ?solution_stack_name:string prop ->
  application:string prop ->
  name:string prop ->
  setting:aws_elastic_beanstalk_configuration_template__setting list ->
  string ->
  t
