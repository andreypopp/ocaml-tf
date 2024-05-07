(** Provides a Cloudflare Teams Location resource. Teams Locations are
referenced when creating secure web gateway policies.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type networks

val networks : network:string prop -> unit -> networks

type cloudflare_teams_location

val cloudflare_teams_location :
  ?client_default:bool prop ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  networks:networks list ->
  unit ->
  cloudflare_teams_location

val yojson_of_cloudflare_teams_location :
  cloudflare_teams_location -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?client_default:bool prop ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  networks:networks list ->
  string ->
  t

val make :
  ?client_default:bool prop ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  networks:networks list ->
  string ->
  t Tf_core.resource
