(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_identity_provider__config
type cloudflare_access_identity_provider__scim_config
type cloudflare_access_identity_provider

val cloudflare_access_identity_provider :
  ?account_id:string ->
  ?id:string ->
  ?zone_id:string ->
  name:string ->
  type_:string ->
  config:cloudflare_access_identity_provider__config list ->
  scim_config:cloudflare_access_identity_provider__scim_config list ->
  string ->
  unit
