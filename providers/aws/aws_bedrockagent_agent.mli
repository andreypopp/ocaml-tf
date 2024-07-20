(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type prompt_override_configuration__prompt_configurations__inference_configuration = {
  max_length : float prop;  (** max_length *)
  stop_sequences : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** stop_sequences *)
  temperature : float prop;  (** temperature *)
  top_k : float prop;  (** top_k *)
  top_p : float prop;  (** top_p *)
}

type prompt_override_configuration__prompt_configurations = {
  base_prompt_template : string prop;  (** base_prompt_template *)
  inference_configuration :
    prompt_override_configuration__prompt_configurations__inference_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** inference_configuration *)
  parser_mode : string prop;  (** parser_mode *)
  prompt_creation_mode : string prop;  (** prompt_creation_mode *)
  prompt_state : string prop;  (** prompt_state *)
  prompt_type : string prop;  (** prompt_type *)
}

type prompt_override_configuration = {
  override_lambda : string prop;  (** override_lambda *)
  prompt_configurations :
    prompt_override_configuration__prompt_configurations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** prompt_configurations *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_bedrockagent_agent

val aws_bedrockagent_agent :
  ?customer_encryption_key_arn:string prop ->
  ?description:string prop ->
  ?idle_session_ttl_in_seconds:float prop ->
  ?instruction:string prop ->
  ?prepare_agent:bool prop ->
  ?prompt_override_configuration:prompt_override_configuration list ->
  ?skip_resource_in_use_check:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  agent_name:string prop ->
  agent_resource_role_arn:string prop ->
  foundation_model:string prop ->
  unit ->
  aws_bedrockagent_agent

val yojson_of_aws_bedrockagent_agent : aws_bedrockagent_agent -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  agent_arn : string prop;
  agent_id : string prop;
  agent_name : string prop;
  agent_resource_role_arn : string prop;
  agent_version : string prop;
  customer_encryption_key_arn : string prop;
  description : string prop;
  foundation_model : string prop;
  id : string prop;
  idle_session_ttl_in_seconds : float prop;
  instruction : string prop;
  prepare_agent : bool prop;
  prompt_override_configuration :
    prompt_override_configuration list prop;
  skip_resource_in_use_check : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?customer_encryption_key_arn:string prop ->
  ?description:string prop ->
  ?idle_session_ttl_in_seconds:float prop ->
  ?instruction:string prop ->
  ?prepare_agent:bool prop ->
  ?prompt_override_configuration:prompt_override_configuration list ->
  ?skip_resource_in_use_check:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  agent_name:string prop ->
  agent_resource_role_arn:string prop ->
  foundation_model:string prop ->
  string ->
  t

val make :
  ?customer_encryption_key_arn:string prop ->
  ?description:string prop ->
  ?idle_session_ttl_in_seconds:float prop ->
  ?instruction:string prop ->
  ?prepare_agent:bool prop ->
  ?prompt_override_configuration:prompt_override_configuration list ->
  ?skip_resource_in_use_check:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  agent_name:string prop ->
  agent_resource_role_arn:string prop ->
  foundation_model:string prop ->
  string ->
  t Tf_core.resource
