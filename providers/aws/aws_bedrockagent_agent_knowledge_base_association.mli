(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_bedrockagent_agent_knowledge_base_association

val aws_bedrockagent_agent_knowledge_base_association :
  ?agent_version:string prop ->
  agent_id:string prop ->
  description:string prop ->
  knowledge_base_id:string prop ->
  knowledge_base_state:string prop ->
  unit ->
  aws_bedrockagent_agent_knowledge_base_association

val yojson_of_aws_bedrockagent_agent_knowledge_base_association :
  aws_bedrockagent_agent_knowledge_base_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  agent_id : string prop;
  agent_version : string prop;
  description : string prop;
  id : string prop;
  knowledge_base_id : string prop;
  knowledge_base_state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?agent_version:string prop ->
  agent_id:string prop ->
  description:string prop ->
  knowledge_base_id:string prop ->
  knowledge_base_state:string prop ->
  string ->
  t

val make :
  ?agent_version:string prop ->
  agent_id:string prop ->
  description:string prop ->
  knowledge_base_id:string prop ->
  knowledge_base_state:string prop ->
  string ->
  t Tf_core.resource
