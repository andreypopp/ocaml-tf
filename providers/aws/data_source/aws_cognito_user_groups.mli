(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type groups = {
  description : string prop;  (** description *)
  group_name : string prop;  (** group_name *)
  precedence : float prop;  (** precedence *)
  role_arn : string prop;  (** role_arn *)
}

type aws_cognito_user_groups

val aws_cognito_user_groups :
  user_pool_id:string prop -> unit -> aws_cognito_user_groups

val yojson_of_aws_cognito_user_groups :
  aws_cognito_user_groups -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  groups : groups list prop;
  id : string prop;
  user_pool_id : string prop;
}

val register :
  ?tf_module:tf_module -> user_pool_id:string prop -> string -> t

val make : user_pool_id:string prop -> string -> t Tf_core.resource
