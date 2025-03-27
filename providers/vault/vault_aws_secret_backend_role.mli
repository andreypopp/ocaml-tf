(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_secret_backend_role

val vault_aws_secret_backend_role :
  ?default_sts_ttl:float prop ->
  ?external_id:string prop ->
  ?iam_groups:string prop list ->
  ?iam_tags:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?max_sts_ttl:float prop ->
  ?namespace:string prop ->
  ?permissions_boundary_arn:string prop ->
  ?policy_arns:string prop list ->
  ?policy_document:string prop ->
  ?role_arns:string prop list ->
  ?session_tags:string prop Tf_core.assoc ->
  ?user_path:string prop ->
  backend:string prop ->
  credential_type:string prop ->
  name:string prop ->
  unit ->
  vault_aws_secret_backend_role

val yojson_of_vault_aws_secret_backend_role : vault_aws_secret_backend_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  credential_type : string prop;
  default_sts_ttl : float prop;
  external_id : string prop;
  iam_groups : string list prop;
  iam_tags : string Tf_core.assoc prop;
  id : string prop;
  max_sts_ttl : float prop;
  name : string prop;
  namespace : string prop;
  permissions_boundary_arn : string prop;
  policy_arns : string list prop;
  policy_document : string prop;
  role_arns : string list prop;
  session_tags : string Tf_core.assoc prop;
  user_path : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_sts_ttl:float prop ->
  ?external_id:string prop ->
  ?iam_groups:string prop list ->
  ?iam_tags:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?max_sts_ttl:float prop ->
  ?namespace:string prop ->
  ?permissions_boundary_arn:string prop ->
  ?policy_arns:string prop list ->
  ?policy_document:string prop ->
  ?role_arns:string prop list ->
  ?session_tags:string prop Tf_core.assoc ->
  ?user_path:string prop ->
  backend:string prop ->
  credential_type:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?default_sts_ttl:float prop ->
  ?external_id:string prop ->
  ?iam_groups:string prop list ->
  ?iam_tags:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?max_sts_ttl:float prop ->
  ?namespace:string prop ->
  ?permissions_boundary_arn:string prop ->
  ?policy_arns:string prop list ->
  ?policy_document:string prop ->
  ?role_arns:string prop list ->
  ?session_tags:string prop Tf_core.assoc ->
  ?user_path:string prop ->
  backend:string prop ->
  credential_type:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
