(** DNSimple Let's Encrypt certificate resource *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dnsimple_lets_encrypt_certificate

val dnsimple_lets_encrypt_certificate :
  ?alternate_names:string prop list ->
  ?signature_algorithm:string prop ->
  auto_renew:bool prop ->
  domain_id:string prop ->
  name:string prop ->
  unit ->
  dnsimple_lets_encrypt_certificate

val yojson_of_dnsimple_lets_encrypt_certificate :
  dnsimple_lets_encrypt_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alternate_names : string list prop;
  authority_identifier : string prop;
  auto_renew : bool prop;
  created_at : string prop;
  csr : string prop;
  domain_id : string prop;
  expires_at : string prop;
  id : float prop;
  name : string prop;
  signature_algorithm : string prop;
  state : string prop;
  updated_at : string prop;
  years : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?alternate_names:string prop list ->
  ?signature_algorithm:string prop ->
  auto_renew:bool prop ->
  domain_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?alternate_names:string prop list ->
  ?signature_algorithm:string prop ->
  auto_renew:bool prop ->
  domain_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
