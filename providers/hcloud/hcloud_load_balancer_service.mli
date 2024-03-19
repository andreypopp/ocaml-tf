(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type health_check__http

val health_check__http :
  ?domain:string prop ->
  ?path:string prop ->
  ?response:string prop ->
  ?status_codes:string prop list ->
  ?tls:bool prop ->
  unit ->
  health_check__http

type health_check

val health_check :
  ?retries:float prop ->
  interval:float prop ->
  port:float prop ->
  protocol:string prop ->
  timeout:float prop ->
  http:health_check__http list ->
  unit ->
  health_check

type http

val http :
  ?certificates:float prop list ->
  ?cookie_lifetime:float prop ->
  ?cookie_name:string prop ->
  ?redirect_http:bool prop ->
  ?sticky_sessions:bool prop ->
  unit ->
  http

type hcloud_load_balancer_service

val hcloud_load_balancer_service :
  ?destination_port:float prop ->
  ?id:string prop ->
  ?listen_port:float prop ->
  ?proxyprotocol:bool prop ->
  load_balancer_id:string prop ->
  protocol:string prop ->
  health_check:health_check list ->
  http:http list ->
  unit ->
  hcloud_load_balancer_service

val yojson_of_hcloud_load_balancer_service :
  hcloud_load_balancer_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  destination_port : float prop;
  id : string prop;
  listen_port : float prop;
  load_balancer_id : string prop;
  protocol : string prop;
  proxyprotocol : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?destination_port:float prop ->
  ?id:string prop ->
  ?listen_port:float prop ->
  ?proxyprotocol:bool prop ->
  load_balancer_id:string prop ->
  protocol:string prop ->
  health_check:health_check list ->
  http:http list ->
  string ->
  t
