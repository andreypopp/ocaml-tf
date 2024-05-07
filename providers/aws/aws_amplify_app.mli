(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type production_branch = {
  branch_name : string prop;  (** branch_name *)
  last_deploy_time : string prop;  (** last_deploy_time *)
  status : string prop;  (** status *)
  thumbnail_url : string prop;  (** thumbnail_url *)
}

type auto_branch_creation_config

val auto_branch_creation_config :
  ?basic_auth_credentials:string prop ->
  ?build_spec:string prop ->
  ?enable_auto_build:bool prop ->
  ?enable_basic_auth:bool prop ->
  ?enable_performance_mode:bool prop ->
  ?enable_pull_request_preview:bool prop ->
  ?environment_variables:(string * string prop) list ->
  ?framework:string prop ->
  ?pull_request_environment_name:string prop ->
  ?stage:string prop ->
  unit ->
  auto_branch_creation_config

type custom_rule

val custom_rule :
  ?condition:string prop ->
  ?status:string prop ->
  source:string prop ->
  target:string prop ->
  unit ->
  custom_rule

type aws_amplify_app

val aws_amplify_app :
  ?access_token:string prop ->
  ?auto_branch_creation_patterns:string prop list ->
  ?basic_auth_credentials:string prop ->
  ?build_spec:string prop ->
  ?custom_headers:string prop ->
  ?description:string prop ->
  ?enable_auto_branch_creation:bool prop ->
  ?enable_basic_auth:bool prop ->
  ?enable_branch_auto_build:bool prop ->
  ?enable_branch_auto_deletion:bool prop ->
  ?environment_variables:(string * string prop) list ->
  ?iam_service_role_arn:string prop ->
  ?id:string prop ->
  ?oauth_token:string prop ->
  ?platform:string prop ->
  ?repository:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?auto_branch_creation_config:auto_branch_creation_config list ->
  ?custom_rule:custom_rule list ->
  name:string prop ->
  unit ->
  aws_amplify_app

val yojson_of_aws_amplify_app : aws_amplify_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_token : string prop;
  arn : string prop;
  auto_branch_creation_patterns : string list prop;
  basic_auth_credentials : string prop;
  build_spec : string prop;
  custom_headers : string prop;
  default_domain : string prop;
  description : string prop;
  enable_auto_branch_creation : bool prop;
  enable_basic_auth : bool prop;
  enable_branch_auto_build : bool prop;
  enable_branch_auto_deletion : bool prop;
  environment_variables : (string * string) list prop;
  iam_service_role_arn : string prop;
  id : string prop;
  name : string prop;
  oauth_token : string prop;
  platform : string prop;
  production_branch : production_branch list prop;
  repository : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_token:string prop ->
  ?auto_branch_creation_patterns:string prop list ->
  ?basic_auth_credentials:string prop ->
  ?build_spec:string prop ->
  ?custom_headers:string prop ->
  ?description:string prop ->
  ?enable_auto_branch_creation:bool prop ->
  ?enable_basic_auth:bool prop ->
  ?enable_branch_auto_build:bool prop ->
  ?enable_branch_auto_deletion:bool prop ->
  ?environment_variables:(string * string prop) list ->
  ?iam_service_role_arn:string prop ->
  ?id:string prop ->
  ?oauth_token:string prop ->
  ?platform:string prop ->
  ?repository:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?auto_branch_creation_config:auto_branch_creation_config list ->
  ?custom_rule:custom_rule list ->
  name:string prop ->
  string ->
  t

val make :
  ?access_token:string prop ->
  ?auto_branch_creation_patterns:string prop list ->
  ?basic_auth_credentials:string prop ->
  ?build_spec:string prop ->
  ?custom_headers:string prop ->
  ?description:string prop ->
  ?enable_auto_branch_creation:bool prop ->
  ?enable_basic_auth:bool prop ->
  ?enable_branch_auto_build:bool prop ->
  ?enable_branch_auto_deletion:bool prop ->
  ?environment_variables:(string * string prop) list ->
  ?iam_service_role_arn:string prop ->
  ?id:string prop ->
  ?oauth_token:string prop ->
  ?platform:string prop ->
  ?repository:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?auto_branch_creation_config:auto_branch_creation_config list ->
  ?custom_rule:custom_rule list ->
  name:string prop ->
  string ->
  t Tf_core.resource
