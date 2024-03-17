(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_teams_location__networks
type cloudflare_teams_location

val cloudflare_teams_location :
  ?client_default:bool prop ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  networks:cloudflare_teams_location__networks list ->
  string ->
  unit
