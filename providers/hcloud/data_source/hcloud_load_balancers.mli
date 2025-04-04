(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type load_balancers__target = {
  label_selector : string prop;  (** label_selector *)
  server_id : float prop;  (** server_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type load_balancers__service__http = {
  certificates : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** certificates *)
  cookie_lifetime : float prop;  (** cookie_lifetime *)
  cookie_name : string prop;  (** cookie_name *)
  redirect_http : bool prop;  (** redirect_http *)
  sticky_sessions : bool prop;  (** sticky_sessions *)
}

type load_balancers__service__health_check__http = {
  domain : string prop;  (** domain *)
  path : string prop;  (** path *)
  response : string prop;  (** response *)
  status_codes : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** status_codes *)
  tls : bool prop;  (** tls *)
}

type load_balancers__service__health_check = {
  http : load_balancers__service__health_check__http list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http *)
  interval : float prop;  (** interval *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  retries : float prop;  (** retries *)
  timeout : float prop;  (** timeout *)
}

type load_balancers__service = {
  destination_port : float prop;  (** destination_port *)
  health_check : load_balancers__service__health_check list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** health_check *)
  http : load_balancers__service__http list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http *)
  listen_port : float prop;  (** listen_port *)
  protocol : string prop;  (** protocol *)
  proxyprotocol : bool prop;  (** proxyprotocol *)
}

type load_balancers__algorithm = {
  type_ : string prop; [@key "type"]  (** type *)
}

type load_balancers = {
  algorithm : load_balancers__algorithm list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** algorithm *)
  delete_protection : bool prop;  (** delete_protection *)
  id : float prop;  (** id *)
  ipv4 : string prop;  (** ipv4 *)
  ipv6 : string prop;  (** ipv6 *)
  labels : string prop Tf_core.assoc;  (** labels *)
  load_balancer_type : string prop;  (** load_balancer_type *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  network_id : float prop;  (** network_id *)
  network_ip : string prop;  (** network_ip *)
  network_zone : string prop;  (** network_zone *)
  service : load_balancers__service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** service *)
  target : load_balancers__target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** target *)
}

type hcloud_load_balancers

val hcloud_load_balancers :
  ?id:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_load_balancers

val yojson_of_hcloud_load_balancers : hcloud_load_balancers -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  load_balancers : load_balancers list prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource
