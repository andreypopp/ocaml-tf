(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_amplify_app__auto_branch_creation_config
type aws_amplify_app__custom_rule

type aws_amplify_app__production_branch = {
  branch_name : string;  (** branch_name *)
  last_deploy_time : string;  (** last_deploy_time *)
  status : string;  (** status *)
  thumbnail_url : string;  (** thumbnail_url *)
}
[@@deriving yojson_of]

type aws_amplify_app

val aws_amplify_app :
  ?access_token:string ->
  ?auto_branch_creation_patterns:string list ->
  ?basic_auth_credentials:string ->
  ?description:string ->
  ?enable_auto_branch_creation:bool ->
  ?enable_basic_auth:bool ->
  ?enable_branch_auto_build:bool ->
  ?enable_branch_auto_deletion:bool ->
  ?environment_variables:(string * string) list ->
  ?iam_service_role_arn:string ->
  ?oauth_token:string ->
  ?platform:string ->
  ?repository:string ->
  ?tags:(string * string) list ->
  name:string ->
  auto_branch_creation_config:
    aws_amplify_app__auto_branch_creation_config list ->
  custom_rule:aws_amplify_app__custom_rule list ->
  string ->
  unit
