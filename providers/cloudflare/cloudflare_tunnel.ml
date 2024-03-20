(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_tunnel = {
  account_id : string prop;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  config_src : string prop option; [@option]
      (** Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard or using tunnel_config, tunnel_route or tunnel_virtual_network resources. Available values: `local`, `cloudflare`. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** A user-friendly name chosen when the tunnel is created. **Modifying this attribute will force creation of a new resource.** *)
  secret : string prop;
      (** 32 or more bytes, encoded as a base64 string. The Create Argo Tunnel endpoint sets this as the tunnel's password. Anyone wishing to run the tunnel needs this password. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Tunnel exposes applications running on your local web server on any
network with an internet connection without manually adding DNS
records or configuring a firewall or router.
 *)

let cloudflare_tunnel ?config_src ?id ~account_id ~name ~secret () :
    cloudflare_tunnel =
  { account_id; config_src; id; name; secret }

type t = {
  account_id : string prop;
  cname : string prop;
  config_src : string prop;
  id : string prop;
  name : string prop;
  secret : string prop;
  tunnel_token : string prop;
}

let make ?config_src ?id ~account_id ~name ~secret __id =
  let __type = "cloudflare_tunnel" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       cname = Prop.computed __type __id "cname";
       config_src = Prop.computed __type __id "config_src";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       secret = Prop.computed __type __id "secret";
       tunnel_token = Prop.computed __type __id "tunnel_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_tunnel
        (cloudflare_tunnel ?config_src ?id ~account_id ~name ~secret
           ());
    attrs = __attrs;
  }

let register ?tf_module ?config_src ?id ~account_id ~name ~secret
    __id =
  let (r : _ Tf_core.resource) =
    make ?config_src ?id ~account_id ~name ~secret __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
