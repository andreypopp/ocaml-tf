(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_amplify_branch

val aws_amplify_branch :
  ?backend_environment_arn:string prop ->
  ?basic_auth_credentials:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?enable_auto_build:bool prop ->
  ?enable_basic_auth:bool prop ->
  ?enable_notification:bool prop ->
  ?enable_performance_mode:bool prop ->
  ?enable_pull_request_preview:bool prop ->
  ?environment_variables:string prop Tf_core.assoc ->
  ?framework:string prop ->
  ?id:string prop ->
  ?pull_request_environment_name:string prop ->
  ?stage:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?ttl:string prop ->
  app_id:string prop ->
  branch_name:string prop ->
  unit ->
  aws_amplify_branch

val yojson_of_aws_amplify_branch : aws_amplify_branch -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  arn : string prop;
  associated_resources : string list prop;
  backend_environment_arn : string prop;
  basic_auth_credentials : string prop;
  branch_name : string prop;
  custom_domains : string list prop;
  description : string prop;
  destination_branch : string prop;
  display_name : string prop;
  enable_auto_build : bool prop;
  enable_basic_auth : bool prop;
  enable_notification : bool prop;
  enable_performance_mode : bool prop;
  enable_pull_request_preview : bool prop;
  environment_variables : string Tf_core.assoc prop;
  framework : string prop;
  id : string prop;
  pull_request_environment_name : string prop;
  source_branch : string prop;
  stage : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  ttl : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend_environment_arn:string prop ->
  ?basic_auth_credentials:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?enable_auto_build:bool prop ->
  ?enable_basic_auth:bool prop ->
  ?enable_notification:bool prop ->
  ?enable_performance_mode:bool prop ->
  ?enable_pull_request_preview:bool prop ->
  ?environment_variables:string prop Tf_core.assoc ->
  ?framework:string prop ->
  ?id:string prop ->
  ?pull_request_environment_name:string prop ->
  ?stage:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?ttl:string prop ->
  app_id:string prop ->
  branch_name:string prop ->
  string ->
  t

val make :
  ?backend_environment_arn:string prop ->
  ?basic_auth_credentials:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?enable_auto_build:bool prop ->
  ?enable_basic_auth:bool prop ->
  ?enable_notification:bool prop ->
  ?enable_performance_mode:bool prop ->
  ?enable_pull_request_preview:bool prop ->
  ?environment_variables:string prop Tf_core.assoc ->
  ?framework:string prop ->
  ?id:string prop ->
  ?pull_request_environment_name:string prop ->
  ?stage:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?ttl:string prop ->
  app_id:string prop ->
  branch_name:string prop ->
  string ->
  t Tf_core.resource
