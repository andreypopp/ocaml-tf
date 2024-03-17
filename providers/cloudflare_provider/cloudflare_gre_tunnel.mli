(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_gre_tunnel

type t = private {
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
  string ->
  t
