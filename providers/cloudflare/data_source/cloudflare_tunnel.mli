(** Use this datasource to lookup a tunnel in an account. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_tunnel

val cloudflare_tunnel :
  account_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_tunnel

val yojson_of_cloudflare_tunnel : cloudflare_tunnel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  name : string prop;
  remote_config : bool prop;
  status : string prop;
  tunnel_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  account_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
