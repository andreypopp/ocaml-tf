(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type setting

val setting :
  ?resource:string prop ->
  name:string prop ->
  namespace:string prop ->
  value:string prop ->
  unit ->
  setting

type aws_elastic_beanstalk_configuration_template

val aws_elastic_beanstalk_configuration_template :
  ?description:string prop ->
  ?environment_id:string prop ->
  ?id:string prop ->
  ?solution_stack_name:string prop ->
  application:string prop ->
  name:string prop ->
  setting:setting list ->
  unit ->
  aws_elastic_beanstalk_configuration_template

val yojson_of_aws_elastic_beanstalk_configuration_template :
  aws_elastic_beanstalk_configuration_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  name : string prop;
  solution_stack_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?environment_id:string prop ->
  ?id:string prop ->
  ?solution_stack_name:string prop ->
  application:string prop ->
  name:string prop ->
  setting:setting list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?environment_id:string prop ->
  ?id:string prop ->
  ?solution_stack_name:string prop ->
  application:string prop ->
  name:string prop ->
  setting:setting list ->
  string ->
  t Tf_core.resource
