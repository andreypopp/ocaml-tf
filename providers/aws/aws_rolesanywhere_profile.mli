(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rolesanywhere_profile

type t = private {
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
  string ->
  t
