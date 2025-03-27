(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_secret_backend

val vault_aws_secret_backend :
  ?access_key:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?iam_endpoint:string prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_key:string prop ->
  ?identity_token_ttl:float prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?region:string prop ->
  ?role_arn:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?secret_key:string prop ->
  ?sts_endpoint:string prop ->
  ?sts_fallback_endpoints:string prop list ->
  ?sts_fallback_regions:string prop list ->
  ?sts_region:string prop ->
  ?username_template:string prop ->
  unit ->
  vault_aws_secret_backend

val yojson_of_vault_aws_secret_backend : vault_aws_secret_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_key : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  disable_automated_rotation : bool prop;
  disable_remount : bool prop;
  iam_endpoint : string prop;
  id : string prop;
  identity_token_audience : string prop;
  identity_token_key : string prop;
  identity_token_ttl : float prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  path : string prop;
  region : string prop;
  role_arn : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  secret_key : string prop;
  sts_endpoint : string prop;
  sts_fallback_endpoints : string list prop;
  sts_fallback_regions : string list prop;
  sts_region : string prop;
  username_template : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_key:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?iam_endpoint:string prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_key:string prop ->
  ?identity_token_ttl:float prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?region:string prop ->
  ?role_arn:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?secret_key:string prop ->
  ?sts_endpoint:string prop ->
  ?sts_fallback_endpoints:string prop list ->
  ?sts_fallback_regions:string prop list ->
  ?sts_region:string prop ->
  ?username_template:string prop ->
  string ->
  t

val make :
  ?access_key:string prop ->
  ?default_lease_ttl_seconds:float prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?iam_endpoint:string prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_key:string prop ->
  ?identity_token_ttl:float prop ->
  ?local:bool prop ->
  ?max_lease_ttl_seconds:float prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?region:string prop ->
  ?role_arn:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?secret_key:string prop ->
  ?sts_endpoint:string prop ->
  ?sts_fallback_endpoints:string prop list ->
  ?sts_fallback_regions:string prop list ->
  ?sts_region:string prop ->
  ?username_template:string prop ->
  string ->
  t Tf_core.resource
