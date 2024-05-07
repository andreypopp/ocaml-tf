(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type lock_configuration__unlock_delay

val lock_configuration__unlock_delay :
  unlock_delay_unit:string prop ->
  unlock_delay_value:float prop ->
  unit ->
  lock_configuration__unlock_delay

type lock_configuration

val lock_configuration :
  unlock_delay:lock_configuration__unlock_delay list ->
  unit ->
  lock_configuration

type resource_tags

val resource_tags :
  ?resource_tag_value:string prop ->
  resource_tag_key:string prop ->
  unit ->
  resource_tags

type retention_period

val retention_period :
  retention_period_unit:string prop ->
  retention_period_value:float prop ->
  unit ->
  retention_period

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_rbin_rule

val aws_rbin_rule :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?lock_configuration:lock_configuration list ->
  ?timeouts:timeouts ->
  resource_type:string prop ->
  resource_tags:resource_tags list ->
  retention_period:retention_period list ->
  unit ->
  aws_rbin_rule

val yojson_of_aws_rbin_rule : aws_rbin_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  lock_end_time : string prop;
  lock_state : string prop;
  resource_type : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?lock_configuration:lock_configuration list ->
  ?timeouts:timeouts ->
  resource_type:string prop ->
  resource_tags:resource_tags list ->
  retention_period:retention_period list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?lock_configuration:lock_configuration list ->
  ?timeouts:timeouts ->
  resource_type:string prop ->
  resource_tags:resource_tags list ->
  retention_period:retention_period list ->
  string ->
  t Tf_core.resource
