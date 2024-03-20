(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let cloudflare_teams_proxy_endpoint ?id ~account_id ~ips ~name () :
    cloudflare_teams_proxy_endpoint =
  { account_id; id; ips; name }

type t = {
  account_id : string prop;
  id : string prop;
  ips : string list prop;
  name : string prop;
  subdomain : string prop;
}

let make ?id ~account_id ~ips ~name __id =
  let __type = "cloudflare_teams_proxy_endpoint" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       ips = Prop.computed __type __id "ips";
       name = Prop.computed __type __id "name";
       subdomain = Prop.computed __type __id "subdomain";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_teams_proxy_endpoint
        (cloudflare_teams_proxy_endpoint ?id ~account_id ~ips ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~ips ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~ips ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
