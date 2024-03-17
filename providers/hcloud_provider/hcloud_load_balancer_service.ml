(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_load_balancer_service__health_check__http = {
  domain : string option; [@option]  (** domain *)
  path : string option; [@option]  (** path *)
  response : string option; [@option]  (** response *)
  status_codes : string list option; [@option]  (** status_codes *)
  tls : bool option; [@option]  (** tls *)
}
[@@deriving yojson_of]
(** hcloud_load_balancer_service__health_check__http *)

type hcloud_load_balancer_service__health_check = {
  interval : float;  (** interval *)
  port : float;  (** port *)
  protocol : string;  (** protocol *)
  retries : float option; [@option]  (** retries *)
  timeout : float;  (** timeout *)
  http : hcloud_load_balancer_service__health_check__http list;
}
[@@deriving yojson_of]
(** hcloud_load_balancer_service__health_check *)

type hcloud_load_balancer_service__http = {
  certificates : float list option; [@option]  (** certificates *)
  cookie_lifetime : float option; [@option]  (** cookie_lifetime *)
  cookie_name : string option; [@option]  (** cookie_name *)
  redirect_http : bool option; [@option]  (** redirect_http *)
  sticky_sessions : bool option; [@option]  (** sticky_sessions *)
}
[@@deriving yojson_of]
(** hcloud_load_balancer_service__http *)

type hcloud_load_balancer_service = {
  destination_port : float option; [@option]  (** destination_port *)
  id : string option; [@option]  (** id *)
  listen_port : float option; [@option]  (** listen_port *)
  load_balancer_id : string;  (** load_balancer_id *)
  protocol : string;  (** protocol *)
  proxyprotocol : bool option; [@option]  (** proxyprotocol *)
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
