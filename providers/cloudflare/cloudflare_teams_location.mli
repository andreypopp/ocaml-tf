(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_teams_location__networks
type cloudflare_teams_location

type t = private {
  account_id : string prop;
  anonymized_logs_enabled : bool prop;
  client_default : bool prop;
  doh_subdomain : string prop;
  id : string prop;
  ip : string prop;
  ipv4_destination : string prop;
  name : string prop;
  policy_ids : string list prop;
}

val cloudflare_teams_location :
  ?client_default:bool prop ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  networks:cloudflare_teams_location__networks list ->
  string ->
  t
