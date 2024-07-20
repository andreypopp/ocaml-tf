(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action_group_executor

val action_group_executor :
  ?custom_control:string prop ->
  ?lambda:string prop ->
  unit ->
  action_group_executor

type api_schema__s3

val api_schema__s3 :
  ?s3_bucket_name:string prop ->
  ?s3_object_key:string prop ->
  unit ->
  api_schema__s3

type api_schema

val api_schema :
  ?payload:string prop ->
  ?s3:api_schema__s3 list ->
  unit ->
  api_schema

type function_schema__member_functions__functions__parameters

val function_schema__member_functions__functions__parameters :
  ?description:string prop ->
  ?required:bool prop ->
  map_block_key:string prop ->
  type_:string prop ->
  unit ->
  function_schema__member_functions__functions__parameters

type function_schema__member_functions__functions

val function_schema__member_functions__functions :
  ?description:string prop ->
  name:string prop ->
  parameters:
    function_schema__member_functions__functions__parameters list ->
  unit ->
  function_schema__member_functions__functions

type function_schema__member_functions

val function_schema__member_functions :
  ?functions:function_schema__member_functions__functions list ->
  unit ->
  function_schema__member_functions

type function_schema

val function_schema :
  ?member_functions:function_schema__member_functions list ->
  unit ->
  function_schema

type aws_bedrockagent_agent_action_group

val aws_bedrockagent_agent_action_group :
  ?action_group_state:string prop ->
  ?description:string prop ->
  ?parent_action_group_signature:string prop ->
  ?skip_resource_in_use_check:bool prop ->
  ?action_group_executor:action_group_executor list ->
  ?api_schema:api_schema list ->
  ?function_schema:function_schema list ->
  action_group_name:string prop ->
  agent_id:string prop ->
  agent_version:string prop ->
  unit ->
  aws_bedrockagent_agent_action_group

val yojson_of_aws_bedrockagent_agent_action_group :
  aws_bedrockagent_agent_action_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action_group_id : string prop;
  action_group_name : string prop;
  action_group_state : string prop;
  agent_id : string prop;
  agent_version : string prop;
  description : string prop;
  id : string prop;
  parent_action_group_signature : string prop;
  skip_resource_in_use_check : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?action_group_state:string prop ->
  ?description:string prop ->
  ?parent_action_group_signature:string prop ->
  ?skip_resource_in_use_check:bool prop ->
  ?action_group_executor:action_group_executor list ->
  ?api_schema:api_schema list ->
  ?function_schema:function_schema list ->
  action_group_name:string prop ->
  agent_id:string prop ->
  agent_version:string prop ->
  string ->
  t

val make :
  ?action_group_state:string prop ->
  ?description:string prop ->
  ?parent_action_group_signature:string prop ->
  ?skip_resource_in_use_check:bool prop ->
  ?action_group_executor:action_group_executor list ->
  ?api_schema:api_schema list ->
  ?function_schema:function_schema list ->
  action_group_name:string prop ->
  agent_id:string prop ->
  agent_version:string prop ->
  string ->
  t Tf_core.resource
