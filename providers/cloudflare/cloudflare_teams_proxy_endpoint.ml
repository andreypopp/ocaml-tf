(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_teams_proxy_endpoint = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  ips : string prop list;
      (** The networks CIDRs that will be allowed to initiate proxy connections. *)
  name : string prop;  (** Name of the teams proxy endpoint. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Teams Proxy Endpoint resource. Teams Proxy
Endpoints are used for pointing proxy clients at Cloudflare Secure
Gateway.
 *)

type t = {
  account_id : string prop;
  id : string prop;
  ips : string list prop;
  name : string prop;
  subdomain : string prop;
}

let cloudflare_teams_proxy_endpoint ?id ~account_id ~ips ~name
    __resource_id =
  let __resource_type = "cloudflare_teams_proxy_endpoint" in
  let __resource =
    ({ account_id; id; ips; name } : cloudflare_teams_proxy_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_teams_proxy_endpoint __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       ips = Prop.computed __resource_type __resource_id "ips";
       name = Prop.computed __resource_type __resource_id "name";
       subdomain =
         Prop.computed __resource_type __resource_id "subdomain";
     }
      : t)
  in
  __resource_attributes
