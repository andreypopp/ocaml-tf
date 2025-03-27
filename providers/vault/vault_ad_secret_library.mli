(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_ad_secret_library

val vault_ad_secret_library :
  ?disable_check_in_enforcement:bool prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?ttl:float prop ->
  backend:string prop ->
  name:string prop ->
  service_account_names:string prop list ->
  unit ->
  vault_ad_secret_library

val yojson_of_vault_ad_secret_library : vault_ad_secret_library -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  disable_check_in_enforcement : bool prop;
  id : string prop;
  max_ttl : float prop;
  name : string prop;
  namespace : string prop;
  service_account_names : string list prop;
  ttl : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?disable_check_in_enforcement:bool prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?ttl:float prop ->
  backend:string prop ->
  name:string prop ->
  service_account_names:string prop list ->
  string ->
  t

val make :
  ?disable_check_in_enforcement:bool prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  ?ttl:float prop ->
  backend:string prop ->
  name:string prop ->
  service_account_names:string prop list ->
  string ->
  t Tf_core.resource
