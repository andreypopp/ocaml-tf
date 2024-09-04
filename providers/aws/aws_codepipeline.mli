(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type artifact_store__encryption_key

val artifact_store__encryption_key :
  id:string prop ->
  type_:string prop ->
  unit ->
  artifact_store__encryption_key

type artifact_store

val artifact_store :
  ?region:string prop ->
  ?encryption_key:artifact_store__encryption_key list ->
  location:string prop ->
  type_:string prop ->
  unit ->
  artifact_store

type stage__action

val stage__action :
  ?configuration:string prop Tf_core.assoc ->
  ?input_artifacts:string prop list ->
  ?namespace:string prop ->
  ?output_artifacts:string prop list ->
  ?region:string prop ->
  ?role_arn:string prop ->
  ?run_order:float prop ->
  ?timeout_in_minutes:float prop ->
  category:string prop ->
  name:string prop ->
  owner:string prop ->
  provider:string prop ->
  version:string prop ->
  unit ->
  stage__action

type stage

val stage :
  name:string prop -> action:stage__action list -> unit -> stage

type trigger__git_configuration__pull_request__branches

val trigger__git_configuration__pull_request__branches :
  ?excludes:string prop list ->
  ?includes:string prop list ->
  unit ->
  trigger__git_configuration__pull_request__branches

type trigger__git_configuration__pull_request__file_paths

val trigger__git_configuration__pull_request__file_paths :
  ?excludes:string prop list ->
  ?includes:string prop list ->
  unit ->
  trigger__git_configuration__pull_request__file_paths

type trigger__git_configuration__pull_request

val trigger__git_configuration__pull_request :
  ?events:string prop list ->
  ?branches:trigger__git_configuration__pull_request__branches list ->
  ?file_paths:
    trigger__git_configuration__pull_request__file_paths list ->
  unit ->
  trigger__git_configuration__pull_request

type trigger__git_configuration__push__branches

val trigger__git_configuration__push__branches :
  ?excludes:string prop list ->
  ?includes:string prop list ->
  unit ->
  trigger__git_configuration__push__branches

type trigger__git_configuration__push__file_paths

val trigger__git_configuration__push__file_paths :
  ?excludes:string prop list ->
  ?includes:string prop list ->
  unit ->
  trigger__git_configuration__push__file_paths

type trigger__git_configuration__push__tags

val trigger__git_configuration__push__tags :
  ?excludes:string prop list ->
  ?includes:string prop list ->
  unit ->
  trigger__git_configuration__push__tags

type trigger__git_configuration__push

val trigger__git_configuration__push :
  ?branches:trigger__git_configuration__push__branches list ->
  ?file_paths:trigger__git_configuration__push__file_paths list ->
  ?tags:trigger__git_configuration__push__tags list ->
  unit ->
  trigger__git_configuration__push

type trigger__git_configuration

val trigger__git_configuration :
  ?pull_request:trigger__git_configuration__pull_request list ->
  ?push:trigger__git_configuration__push list ->
  source_action_name:string prop ->
  unit ->
  trigger__git_configuration

type trigger

val trigger :
  provider_type:string prop ->
  git_configuration:trigger__git_configuration list ->
  unit ->
  trigger

type variable

val variable :
  ?default_value:string prop ->
  ?description:string prop ->
  name:string prop ->
  unit ->
  variable

type aws_codepipeline

val aws_codepipeline :
  ?execution_mode:string prop ->
  ?id:string prop ->
  ?pipeline_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?trigger:trigger list ->
  ?variable:variable list ->
  name:string prop ->
  role_arn:string prop ->
  artifact_store:artifact_store list ->
  stage:stage list ->
  unit ->
  aws_codepipeline

val yojson_of_aws_codepipeline : aws_codepipeline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  execution_mode : string prop;
  id : string prop;
  name : string prop;
  pipeline_type : string prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?execution_mode:string prop ->
  ?id:string prop ->
  ?pipeline_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?trigger:trigger list ->
  ?variable:variable list ->
  name:string prop ->
  role_arn:string prop ->
  artifact_store:artifact_store list ->
  stage:stage list ->
  string ->
  t

val make :
  ?execution_mode:string prop ->
  ?id:string prop ->
  ?pipeline_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?trigger:trigger list ->
  ?variable:variable list ->
  name:string prop ->
  role_arn:string prop ->
  artifact_store:artifact_store list ->
  stage:stage list ->
  string ->
  t Tf_core.resource
