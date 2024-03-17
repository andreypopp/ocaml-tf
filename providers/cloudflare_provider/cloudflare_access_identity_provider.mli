(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_identity_provider__config
type cloudflare_access_identity_provider__scim_config
type cloudflare_access_identity_provider

type t = private {
  account_id : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  zone_id : string prop;
}

val cloudflare_access_identity_provider :
  ?account_id:string prop ->
  ?id:string prop ->
  ?zone_id:string prop ->
  name:string prop ->
  type_:string prop ->
  config:cloudflare_access_identity_provider__config list ->
  scim_config:cloudflare_access_identity_provider__scim_config list ->
  string ->
  t
