(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_teams_proxy_endpoint = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  ips : string list;
      (** The networks CIDRs that will be allowed to initiate proxy connections. *)
  name : string;  (** Name of the teams proxy endpoint. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Teams Proxy Endpoint resource. Teams Proxy
Endpoints are used for pointing proxy clients at Cloudflare Secure
Gateway.
 *)

let cloudflare_teams_proxy_endpoint ~account_id ~ips ~name
    __resource_id =
  let __resource_type = "cloudflare_teams_proxy_endpoint" in
  let __resource = { account_id; ips; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_teams_proxy_endpoint __resource);
  ()