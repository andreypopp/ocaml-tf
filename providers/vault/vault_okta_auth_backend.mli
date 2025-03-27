(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type group = {
  group_name : string prop;  (** group_name *)
  policies : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]  (** policies *)
}

type user = {
  groups : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]  (** groups *)
  policies : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]  (** policies *)
  username : string prop;  (** username *)
}

type vault_okta_auth_backend

val vault_okta_auth_backend :
  ?base_url:string prop ->
  ?bypass_okta_mfa:bool prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?group:group list ->
  ?id:string prop ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?token:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  ?ttl:string prop ->
  ?user:user list ->
  organization:string prop ->
  unit ->
  vault_okta_auth_backend

val yojson_of_vault_okta_auth_backend : vault_okta_auth_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  base_url : string prop;
  bypass_okta_mfa : bool prop;
  description : string prop;
  disable_remount : bool prop;
  group : group list prop;
  id : string prop;
  max_ttl : string prop;
  namespace : string prop;
  organization : string prop;
  path : string prop;
  token : string prop;
  token_bound_cidrs : string list prop;
  token_explicit_max_ttl : float prop;
  token_max_ttl : float prop;
  token_no_default_policy : bool prop;
  token_num_uses : float prop;
  token_period : float prop;
  token_policies : string list prop;
  token_ttl : float prop;
  token_type : string prop;
  ttl : string prop;
  user : user list prop;
}

val register :
  ?tf_module:tf_module ->
  ?base_url:string prop ->
  ?bypass_okta_mfa:bool prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?group:group list ->
  ?id:string prop ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?token:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  ?ttl:string prop ->
  ?user:user list ->
  organization:string prop ->
  string ->
  t

val make :
  ?base_url:string prop ->
  ?bypass_okta_mfa:bool prop ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?group:group list ->
  ?id:string prop ->
  ?max_ttl:string prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?token:string prop ->
  ?token_bound_cidrs:string prop list ->
  ?token_explicit_max_ttl:float prop ->
  ?token_max_ttl:float prop ->
  ?token_no_default_policy:bool prop ->
  ?token_num_uses:float prop ->
  ?token_period:float prop ->
  ?token_policies:string prop list ->
  ?token_ttl:float prop ->
  ?token_type:string prop ->
  ?ttl:string prop ->
  ?user:user list ->
  organization:string prop ->
  string ->
  t Tf_core.resource
