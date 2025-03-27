(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws

val aws :
  ?allow_generate_key:bool prop ->
  ?allow_replace_key:bool prop ->
  ?allow_store_key:bool prop ->
  ?any_mount:bool prop ->
  ?curve:string prop ->
  ?endpoint:string prop ->
  ?region:string prop ->
  access_key:string prop ->
  key_bits:string prop ->
  key_type:string prop ->
  kms_key:string prop ->
  name:string prop ->
  secret_key:string prop ->
  unit ->
  aws

type azure

val azure :
  ?allow_generate_key:bool prop ->
  ?allow_replace_key:bool prop ->
  ?allow_store_key:bool prop ->
  ?any_mount:bool prop ->
  ?environment:string prop ->
  ?key_bits:string prop ->
  ?resource:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  key_name:string prop ->
  key_type:string prop ->
  name:string prop ->
  tenant_id:string prop ->
  vault_name:string prop ->
  unit ->
  azure

type pkcs

val pkcs :
  ?allow_generate_key:bool prop ->
  ?allow_replace_key:bool prop ->
  ?allow_store_key:bool prop ->
  ?any_mount:bool prop ->
  ?curve:string prop ->
  ?force_rw_session:string prop ->
  ?key_bits:string prop ->
  ?slot:string prop ->
  ?token_label:string prop ->
  key_id:string prop ->
  key_label:string prop ->
  library:string prop ->
  mechanism:string prop ->
  name:string prop ->
  pin:string prop ->
  unit ->
  pkcs

type vault_managed_keys

val vault_managed_keys :
  ?id:string prop ->
  ?namespace:string prop ->
  aws:aws list ->
  azure:azure list ->
  pkcs:pkcs list ->
  unit ->
  vault_managed_keys

val yojson_of_vault_managed_keys : vault_managed_keys -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  aws:aws list ->
  azure:azure list ->
  pkcs:pkcs list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  aws:aws list ->
  azure:azure list ->
  pkcs:pkcs list ->
  string ->
  t Tf_core.resource
