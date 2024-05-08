(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type algorithm = { type_ : string prop [@key "type"]  (** type *) }

type service__http = {
  certificates : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** certificates *)
  cookie_lifetime : float prop;  (** cookie_lifetime *)
  cookie_name : string prop;  (** cookie_name *)
  redirect_http : bool prop;  (** redirect_http *)
  sticky_sessions : bool prop;  (** sticky_sessions *)
}

type service__health_check__http = {
  domain : string prop;  (** domain *)
  path : string prop;  (** path *)
  response : string prop;  (** response *)
  status_codes : float prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** status_codes *)
  tls : bool prop;  (** tls *)
}

type service__health_check = {
  http : service__health_check__http list;
      [@default []] [@yojson_drop_default ( = )]
      (** http *)
  interval : float prop;  (** interval *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  retries : float prop;  (** retries *)
  timeout : float prop;  (** timeout *)
}

type service = {
  destination_port : float prop;  (** destination_port *)
  health_check : service__health_check list;
      [@default []] [@yojson_drop_default ( = )]
      (** health_check *)
  http : service__http list;
      [@default []] [@yojson_drop_default ( = )]
      (** http *)
  listen_port : float prop;  (** listen_port *)
  protocol : string prop;  (** protocol *)
  proxyprotocol : bool prop;  (** proxyprotocol *)
}

type target = {
  label_selector : string prop;  (** label_selector *)
  server_id : float prop;  (** server_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type hcloud_load_balancer

val hcloud_load_balancer :
  ?id:float prop ->
  ?name:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_load_balancer

val yojson_of_hcloud_load_balancer : hcloud_load_balancer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  algorithm : algorithm list prop;
  delete_protection : bool prop;
  id : float prop;
  ipv4 : string prop;
  ipv6 : string prop;
  labels : (string * string) list prop;
  load_balancer_type : string prop;
  location : string prop;
  name : string prop;
  network_id : float prop;
  network_ip : string prop;
  network_zone : string prop;
  service : service list prop;
  target : target list prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:float prop ->
  ?name:string prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?id:float prop ->
  ?name:string prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource
