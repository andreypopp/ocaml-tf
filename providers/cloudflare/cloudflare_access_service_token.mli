(** Access Service Tokens are used for service-to-service communication
when an application is behind Cloudflare Access.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_access_service_token

val cloudflare_access_service_token :
  ?account_id:string prop ->
  ?duration:string prop ->
  ?id:string prop ->
  ?min_days_for_renewal:float prop ->
  ?zone_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_access_service_token

val yojson_of_cloudflare_access_service_token :
  cloudflare_access_service_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  client_id : string prop;
  client_secret : string prop;
  duration : string prop;
  expires_at : string prop;
  id : string prop;
  min_days_for_renewal : float prop;
  name : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?duration:string prop ->
  ?id:string prop ->
  ?min_days_for_renewal:float prop ->
  ?zone_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?duration:string prop ->
  ?id:string prop ->
  ?min_days_for_renewal:float prop ->
  ?zone_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
