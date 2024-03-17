(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_tunnel = {
  account_id : string;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  config_src : string option; [@option]
      (** Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard or using tunnel_config, tunnel_route or tunnel_virtual_network resources. Available values: `local`, `cloudflare`. **Modifying this attribute will force creation of a new resource.** *)
  name : string;
      (** A user-friendly name chosen when the tunnel is created. **Modifying this attribute will force creation of a new resource.** *)
  secret : string;
      (** 32 or more bytes, encoded as a base64 string. The Create Argo Tunnel endpoint sets this as the tunnel's password. Anyone wishing to run the tunnel needs this password. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Tunnel exposes applications running on your local web server on any
network with an internet connection without manually adding DNS
records or configuring a firewall or router.
 *)

let cloudflare_tunnel ?config_src ~account_id ~name ~secret
    __resource_id =
  let __resource_type = "cloudflare_tunnel" in
  let __resource = { account_id; config_src; name; secret } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_tunnel __resource);
  ()
