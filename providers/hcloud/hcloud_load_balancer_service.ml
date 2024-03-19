(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type health_check__http = {
  domain : string prop option; [@option]  (** domain *)
  path : string prop option; [@option]  (** path *)
  response : string prop option; [@option]  (** response *)
  status_codes : string prop list option; [@option]
      (** status_codes *)
  tls : bool prop option; [@option]  (** tls *)
}
[@@deriving yojson_of]
(** health_check__http *)

type health_check = {
  interval : float prop;  (** interval *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  retries : float prop option; [@option]  (** retries *)
  timeout : float prop;  (** timeout *)
  http : health_check__http list;
}
[@@deriving yojson_of]
(** health_check *)

type http = {
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
(** http *)

type hcloud_load_balancer_service = {
  destination_port : float prop option; [@option]
      (** destination_port *)
  id : string prop option; [@option]  (** id *)
  listen_port : float prop option; [@option]  (** listen_port *)
  load_balancer_id : string prop;  (** load_balancer_id *)
  protocol : string prop;  (** protocol *)
  proxyprotocol : bool prop option; [@option]  (** proxyprotocol *)
  health_check : health_check list;
  http : http list;
}
[@@deriving yojson_of]
(** hcloud_load_balancer_service *)

let health_check__http ?domain ?path ?response ?status_codes ?tls ()
    : health_check__http =
  { domain; path; response; status_codes; tls }

let health_check ?retries ~interval ~port ~protocol ~timeout ~http ()
    : health_check =
  { interval; port; protocol; retries; timeout; http }

let http ?certificates ?cookie_lifetime ?cookie_name ?redirect_http
    ?sticky_sessions () : http =
  {
    certificates;
    cookie_lifetime;
    cookie_name;
    redirect_http;
    sticky_sessions;
  }

let hcloud_load_balancer_service ?destination_port ?id ?listen_port
    ?proxyprotocol ~load_balancer_id ~protocol ~health_check ~http ()
    : hcloud_load_balancer_service =
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

type t = {
  destination_port : float prop;
  id : string prop;
  listen_port : float prop;
  load_balancer_id : string prop;
  protocol : string prop;
  proxyprotocol : bool prop;
}

let register ?tf_module ?destination_port ?id ?listen_port
    ?proxyprotocol ~load_balancer_id ~protocol ~health_check ~http
    __resource_id =
  let __resource_type = "hcloud_load_balancer_service" in
  let __resource =
    hcloud_load_balancer_service ?destination_port ?id ?listen_port
      ?proxyprotocol ~load_balancer_id ~protocol ~health_check ~http
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_load_balancer_service __resource);
  let __resource_attributes =
    ({
       destination_port =
         Prop.computed __resource_type __resource_id
           "destination_port";
       id = Prop.computed __resource_type __resource_id "id";
       listen_port =
         Prop.computed __resource_type __resource_id "listen_port";
       load_balancer_id =
         Prop.computed __resource_type __resource_id
           "load_balancer_id";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       proxyprotocol =
         Prop.computed __resource_type __resource_id "proxyprotocol";
     }
      : t)
  in
  __resource_attributes
