(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_amplify_app__auto_branch_creation_config
type aws_amplify_app__custom_rule

type aws_amplify_app__production_branch = {
  branch_name : string prop;  (** branch_name *)
  last_deploy_time : string prop;  (** last_deploy_time *)
  status : string prop;  (** status *)
  thumbnail_url : string prop;  (** thumbnail_url *)
}

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
  name:string prop ->
  auto_branch_creation_config:
    aws_amplify_app__auto_branch_creation_config list ->
  custom_rule:aws_amplify_app__custom_rule list ->
  string ->
  unit
