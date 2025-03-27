(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type tune = {
  allowed_response_headers : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
    (** allowed_response_headers *)
  audit_non_hmac_request_keys : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
    (** audit_non_hmac_request_keys *)
  audit_non_hmac_response_keys : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
    (** audit_non_hmac_response_keys *)
  default_lease_ttl : string prop;  (** default_lease_ttl *)
  listing_visibility : string prop;  (** listing_visibility *)
  max_lease_ttl : string prop;  (** max_lease_ttl *)
  passthrough_request_headers : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
    (** passthrough_request_headers *)
  token_type : string prop;  (** token_type *)
}

type custom_endpoint

val custom_endpoint :
  ?api:string prop -> ?compute:string prop -> ?crm:string prop -> ?iam:string prop -> unit -> custom_endpoint

type vault_gcp_auth_backend

val vault_gcp_auth_backend :
  ?client_email:string prop ->
  ?client_id:string prop ->
  ?credentials:string prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_key:string prop ->
  ?identity_token_ttl:float prop ->
  ?local:bool prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?private_key_id:string prop ->
  ?project_id:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?service_account_email:string prop ->
  ?tune:tune list ->
  ?custom_endpoint:custom_endpoint list ->
  unit ->
  vault_gcp_auth_backend

val yojson_of_vault_gcp_auth_backend : vault_gcp_auth_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  client_email : string prop;
  client_id : string prop;
  credentials : string prop;
  description : string prop;
  disable_automated_rotation : bool prop;
  disable_remount : bool prop;
  id : string prop;
  identity_token_audience : string prop;
  identity_token_key : string prop;
  identity_token_ttl : float prop;
  local : bool prop;
  namespace : string prop;
  path : string prop;
  private_key_id : string prop;
  project_id : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  service_account_email : string prop;
  tune : tune list prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_email:string prop ->
  ?client_id:string prop ->
  ?credentials:string prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_key:string prop ->
  ?identity_token_ttl:float prop ->
  ?local:bool prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?private_key_id:string prop ->
  ?project_id:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?service_account_email:string prop ->
  ?tune:tune list ->
  ?custom_endpoint:custom_endpoint list ->
  string ->
  t

val make :
  ?client_email:string prop ->
  ?client_id:string prop ->
  ?credentials:string prop ->
  ?description:string prop ->
  ?disable_automated_rotation:bool prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?identity_token_audience:string prop ->
  ?identity_token_key:string prop ->
  ?identity_token_ttl:float prop ->
  ?local:bool prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?private_key_id:string prop ->
  ?project_id:string prop ->
  ?rotation_period:float prop ->
  ?rotation_schedule:string prop ->
  ?rotation_window:float prop ->
  ?service_account_email:string prop ->
  ?tune:tune list ->
  ?custom_endpoint:custom_endpoint list ->
  string ->
  t Tf_core.resource
