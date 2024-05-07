(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_rolesanywhere_profile

val aws_rolesanywhere_profile :
  ?duration_seconds:float prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?managed_policy_arns:string prop list ->
  ?require_instance_properties:bool prop ->
  ?session_policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  role_arns:string prop list ->
  unit ->
  aws_rolesanywhere_profile

val yojson_of_aws_rolesanywhere_profile :
  aws_rolesanywhere_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  duration_seconds : float prop;
  enabled : bool prop;
  id : string prop;
  managed_policy_arns : string list prop;
  name : string prop;
  require_instance_properties : bool prop;
  role_arns : string list prop;
  session_policy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?duration_seconds:float prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?managed_policy_arns:string prop list ->
  ?require_instance_properties:bool prop ->
  ?session_policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  role_arns:string prop list ->
  string ->
  t

val make :
  ?duration_seconds:float prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?managed_policy_arns:string prop list ->
  ?require_instance_properties:bool prop ->
  ?session_policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  role_arns:string prop list ->
  string ->
  t Tf_core.resource
