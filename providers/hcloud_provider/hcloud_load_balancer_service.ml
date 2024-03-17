(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_load_balancer_service__health_check__http = {
  domain : string prop option; [@option]  (** domain *)
  path : string prop option; [@option]  (** path *)
  response : string prop option; [@option]  (** response *)
  status_codes : string prop list option; [@option]
      (** status_codes *)
  tls : bool prop option; [@option]  (** tls *)
}
[@@deriving yojson_of]
(** hcloud_load_balancer_service__health_check__http *)

type hcloud_load_balancer_service__health_check = {
  interval : float prop;  (** interval *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  retries : float prop option; [@option]  (** retries *)
  timeout : float prop;  (** timeout *)
  http : hcloud_load_balancer_service__health_check__http list;
}
[@@deriving yojson_of]
(** hcloud_load_balancer_service__health_check *)

type hcloud_load_balancer_service__http = {
  certificates : float prop list option; [@option]
      (** certificates *)
  cookie_lifetime : float prop option; [@option]
      (** cookie_lifetime *)
  cookie_name : string prop option; [@option]  (** cookie_name *)
  redirect_http : bool prop option; [@option]  (** redirect_http *)
  sticky_sessions : bool prop option; [@option]
      (** sticky_sessions *)
}
[@@deriving yojson_of]
(** hcloud_load_balancer_service__http *)

type hcloud_load_balancer_service = {
  destination_port : float prop option; [@option]
      (** destination_port *)
  id : string prop option; [@option]  (** id *)
  listen_port : float prop option; [@option]  (** listen_port *)
  load_balancer_id : string prop;  (** load_balancer_id *)
  protocol : string prop;  (** protocol *)
  proxyprotocol : bool prop option; [@option]  (** proxyprotocol *)
  health_check : hcloud_load_balancer_service__health_check list;
  http : hcloud_load_balancer_service__http list;
}
[@@deriving yojson_of]
(** hcloud_load_balancer_service *)

let hcloud_load_balancer_service ?destination_port ?id ?listen_port
    ?proxyprotocol ~load_balancer_id ~protocol ~health_check ~http
    __resource_id =
  let __resource_type = "hcloud_load_balancer_service" in
  let __resource =
    {
      destination_port;
      id;
      listen_port;
      load_balancer_id;
      protocol;
      proxyprotocol;
      health_check;
      http;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_load_balancer_service __resource);
  ()
