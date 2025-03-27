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

type vault_auth_backend

val vault_auth_backend :
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?identity_token_key:string prop ->
  ?local:bool prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?tune:tune list ->
  type_:string prop ->
  unit ->
  vault_auth_backend

val yojson_of_vault_auth_backend : vault_auth_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  identity_token_key : string prop;
  local : bool prop;
  namespace : string prop;
  path : string prop;
  tune : tune list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?identity_token_key:string prop ->
  ?local:bool prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?tune:tune list ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?disable_remount:bool prop ->
  ?id:string prop ->
  ?identity_token_key:string prop ->
  ?local:bool prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  ?tune:tune list ->
  type_:string prop ->
  string ->
  t Tf_core.resource
