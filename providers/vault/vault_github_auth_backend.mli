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

type vault_github_auth_backend

val vault_github_auth_backend :
  ?base_url:string prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?organization_id:float prop ->
  ?path:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  ?tune:tune list ->
  organization:string prop ->
  unit ->
  vault_github_auth_backend

val yojson_of_vault_github_auth_backend : vault_github_auth_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  base_url : string prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  namespace : string prop;
  organization : string prop;
  organization_id : float prop;
  path : string prop;
  token_bound_cidrs : string list prop;
  token_explicit_max_ttl : float prop;
  token_max_ttl : float prop;
  token_no_default_policy : bool prop;
  token_num_uses : float prop;
  token_period : float prop;
  token_policies : string list prop;
  token_ttl : float prop;
  token_type : string prop;
  tune : tune list prop;
}

val register :
  ?tf_module:tf_module ->
  ?base_url:string prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?organization_id:float prop ->
  ?path:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  ?tune:tune list ->
  organization:string prop ->
  string ->
  t

val make :
  ?base_url:string prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?organization_id:float prop ->
  ?path:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  ?tune:tune list ->
  organization:string prop ->
  string ->
  t Tf_core.resource
