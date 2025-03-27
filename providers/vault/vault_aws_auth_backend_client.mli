(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_auth_backend_client

val vault_aws_auth_backend_client :
  ?access_key:string prop ->
  ?backend:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?ec2_endpoint:string prop ->
  ?iam_endpoint:string prop ->
  ?iam_server_id_header_value:string prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_ttl:float prop ->
  ?max_retries:float prop ->
  ?namespace:string prop ->
  ?role_arn:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?secret_key:string prop ->
  ?sts_endpoint:string prop ->
  ?sts_region:string prop ->
  ?use_sts_region_from_client:bool prop ->
  unit ->
  vault_aws_auth_backend_client

val yojson_of_vault_aws_auth_backend_client : vault_aws_auth_backend_client -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_key : string prop;
  backend : string prop;
  disable_automated_rotation : bool prop;
  ec2_endpoint : string prop;
  iam_endpoint : string prop;
  iam_server_id_header_value : string prop;
  id : string prop;
  identity_token_audience : string prop;
  identity_token_ttl : float prop;
  max_retries : float prop;
  namespace : string prop;
  role_arn : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  secret_key : string prop;
  sts_endpoint : string prop;
  sts_region : string prop;
  use_sts_region_from_client : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_key:string prop ->
  ?backend:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?ec2_endpoint:string prop ->
  ?iam_endpoint:string prop ->
  ?iam_server_id_header_value:string prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_ttl:float prop ->
  ?max_retries:float prop ->
  ?namespace:string prop ->
  ?role_arn:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?secret_key:string prop ->
  ?sts_endpoint:string prop ->
  ?sts_region:string prop ->
  ?use_sts_region_from_client:bool prop ->
  string ->
  t

val make :
  ?access_key:string prop ->
  ?backend:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?ec2_endpoint:string prop ->
  ?iam_endpoint:string prop ->
  ?iam_server_id_header_value:string prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_ttl:float prop ->
  ?max_retries:float prop ->
  ?namespace:string prop ->
  ?role_arn:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?secret_key:string prop ->
  ?sts_endpoint:string prop ->
  ?sts_region:string prop ->
  ?use_sts_region_from_client:bool prop ->
  string ->
  t Tf_core.resource
