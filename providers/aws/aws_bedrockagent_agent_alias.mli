(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type routing_configuration = {
  agent_version : string prop;  (** agent_version *)
  provisioned_throughput : string prop;  (** provisioned_throughput *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_bedrockagent_agent_alias

val aws_bedrockagent_agent_alias :
  ?description:string prop ->
  ?routing_configuration:routing_configuration list ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  agent_alias_name:string prop ->
  agent_id:string prop ->
  unit ->
  aws_bedrockagent_agent_alias

val yojson_of_aws_bedrockagent_agent_alias :
  aws_bedrockagent_agent_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  agent_alias_arn : string prop;
  agent_alias_id : string prop;
  agent_alias_name : string prop;
  agent_id : string prop;
  description : string prop;
  id : string prop;
  routing_configuration : routing_configuration list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?routing_configuration:routing_configuration list ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  agent_alias_name:string prop ->
  agent_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?routing_configuration:routing_configuration list ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  agent_alias_name:string prop ->
  agent_id:string prop ->
  string ->
  t Tf_core.resource
