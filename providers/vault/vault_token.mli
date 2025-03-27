(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_token

val vault_token :
  ?display_name:string prop ->
  ?explicit_max_ttl:string prop ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?namespace:string prop ->
  ?no_default_policy:bool prop ->
  ?no_parent:bool prop ->
  ?num_uses:float prop ->
  ?period:string prop ->
  ?policies:string prop list ->
  ?renew_increment:float prop ->
  ?renew_min_lease:float prop ->
  ?renewable:bool prop ->
  ?role_name:string prop ->
  ?ttl:string prop ->
  ?wrapping_ttl:string prop ->
  unit ->
  vault_token

val yojson_of_vault_token : vault_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_token : string prop;
  display_name : string prop;
  explicit_max_ttl : string prop;
  id : string prop;
  lease_duration : float prop;
  lease_started : string prop;
  metadata : string Tf_core.assoc prop;
  namespace : string prop;
  no_default_policy : bool prop;
  no_parent : bool prop;
  num_uses : float prop;
  period : string prop;
  policies : string list prop;
  renew_increment : float prop;
  renew_min_lease : float prop;
  renewable : bool prop;
  role_name : string prop;
  ttl : string prop;
  wrapped_token : string prop;
  wrapping_accessor : string prop;
  wrapping_ttl : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?explicit_max_ttl:string prop ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?namespace:string prop ->
  ?no_default_policy:bool prop ->
  ?no_parent:bool prop ->
  ?num_uses:float prop ->
  ?period:string prop ->
  ?policies:string prop list ->
  ?renew_increment:float prop ->
  ?renew_min_lease:float prop ->
  ?renewable:bool prop ->
  ?role_name:string prop ->
  ?ttl:string prop ->
  ?wrapping_ttl:string prop ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?explicit_max_ttl:string prop ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?namespace:string prop ->
  ?no_default_policy:bool prop ->
  ?no_parent:bool prop ->
  ?num_uses:float prop ->
  ?period:string prop ->
  ?policies:string prop list ->
  ?renew_increment:float prop ->
  ?renew_min_lease:float prop ->
  ?renewable:bool prop ->
  ?role_name:string prop ->
  ?ttl:string prop ->
  ?wrapping_ttl:string prop ->
  string ->
  t Tf_core.resource
