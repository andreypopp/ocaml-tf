(** Provides a resource, that manages GRE tunnels for Magic Transit. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_gre_tunnel

val cloudflare_gre_tunnel :
  ?account_id:string prop ->
  ?description:string prop ->
  ?health_check_enabled:bool prop ->
  ?health_check_target:string prop ->
  ?health_check_type:string prop ->
  ?id:string prop ->
  ?mtu:float prop ->
  ?ttl:float prop ->
  cloudflare_gre_endpoint:string prop ->
  customer_gre_endpoint:string prop ->
  interface_address:string prop ->
  name:string prop ->
  unit ->
  cloudflare_gre_tunnel

val yojson_of_cloudflare_gre_tunnel : cloudflare_gre_tunnel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  cloudflare_gre_endpoint : string prop;
  customer_gre_endpoint : string prop;
  description : string prop;
  health_check_enabled : bool prop;
  health_check_target : string prop;
  health_check_type : string prop;
  id : string prop;
  interface_address : string prop;
  mtu : float prop;
  name : string prop;
  ttl : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?description:string prop ->
  ?health_check_enabled:bool prop ->
  ?health_check_target:string prop ->
  ?health_check_type:string prop ->
  ?id:string prop ->
  ?mtu:float prop ->
  ?ttl:float prop ->
  cloudflare_gre_endpoint:string prop ->
  customer_gre_endpoint:string prop ->
  interface_address:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?description:string prop ->
  ?health_check_enabled:bool prop ->
  ?health_check_target:string prop ->
  ?health_check_type:string prop ->
  ?id:string prop ->
  ?mtu:float prop ->
  ?ttl:float prop ->
  cloudflare_gre_endpoint:string prop ->
  customer_gre_endpoint:string prop ->
  interface_address:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
