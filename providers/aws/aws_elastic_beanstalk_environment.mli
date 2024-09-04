(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type all_settings = {
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
  resource : string prop;  (** resource *)
  value : string prop;  (** value *)
}

type setting

val setting :
  ?resource:string prop ->
  name:string prop ->
  namespace:string prop ->
  value:string prop ->
  unit ->
  setting

type aws_elastic_beanstalk_environment

val aws_elastic_beanstalk_environment :
  ?cname_prefix:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?platform_arn:string prop ->
  ?poll_interval:string prop ->
  ?solution_stack_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?template_name:string prop ->
  ?tier:string prop ->
  ?version_label:string prop ->
  ?wait_for_ready_timeout:string prop ->
  application:string prop ->
  name:string prop ->
  setting:setting list ->
  unit ->
  aws_elastic_beanstalk_environment

val yojson_of_aws_elastic_beanstalk_environment :
  aws_elastic_beanstalk_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  all_settings : all_settings list prop;
  application : string prop;
  arn : string prop;
  autoscaling_groups : string list prop;
  cname : string prop;
  cname_prefix : string prop;
  description : string prop;
  endpoint_url : string prop;
  id : string prop;
  instances : string list prop;
  launch_configurations : string list prop;
  load_balancers : string list prop;
  name : string prop;
  platform_arn : string prop;
  poll_interval : string prop;
  queues : string list prop;
  solution_stack_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  template_name : string prop;
  tier : string prop;
  triggers : string list prop;
  version_label : string prop;
  wait_for_ready_timeout : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cname_prefix:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?platform_arn:string prop ->
  ?poll_interval:string prop ->
  ?solution_stack_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?template_name:string prop ->
  ?tier:string prop ->
  ?version_label:string prop ->
  ?wait_for_ready_timeout:string prop ->
  application:string prop ->
  name:string prop ->
  setting:setting list ->
  string ->
  t

val make :
  ?cname_prefix:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?platform_arn:string prop ->
  ?poll_interval:string prop ->
  ?solution_stack_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?template_name:string prop ->
  ?tier:string prop ->
  ?version_label:string prop ->
  ?wait_for_ready_timeout:string prop ->
  application:string prop ->
  name:string prop ->
  setting:setting list ->
  string ->
  t Tf_core.resource
