(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auth_id_characteristics

val auth_id_characteristics :
  ?name:string prop ->
  ?type_:string prop ->
  unit ->
  auth_id_characteristics

type cloudflare_api_shield

val cloudflare_api_shield :
  ?id:string prop ->
  zone_id:string prop ->
  auth_id_characteristics:auth_id_characteristics list ->
  unit ->
  cloudflare_api_shield

val yojson_of_cloudflare_api_shield : cloudflare_api_shield -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; zone_id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  zone_id:string prop ->
  auth_id_characteristics:auth_id_characteristics list ->
  string ->
  t

val make :
  ?id:string prop ->
  zone_id:string prop ->
  auth_id_characteristics:auth_id_characteristics list ->
  string ->
  t Tf_core.resource
