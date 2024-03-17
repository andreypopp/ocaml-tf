(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_zone = {
  account_id : string;
      (** Account ID to manage the zone resource in. *)
  jump_start : bool option; [@option]
      (** Whether to scan for DNS records on creation. Ignored after zone is created. *)
  paused : bool option; [@option]
      (** Whether this zone is paused (traffic bypasses Cloudflare). Defaults to `false`. *)
  type_ : string option; [@option] [@key "type"]
      (** A full zone implies that DNS is hosted with Cloudflare. A partial zone is typically a partner-hosted zone or a CNAME setup. Available values: `full`, `partial`, `secondary`. Defaults to `full`. *)
  zone : string;
      (** The DNS zone name which will be added. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Zone resource. Zone is the basic resource for
working with Cloudflare and is roughly equivalent to a domain name
that the user purchases.
 *)

let cloudflare_zone ?jump_start ?paused ?type_ ~account_id ~zone
    __resource_id =
  let __resource_type = "cloudflare_zone" in
  let __resource = { account_id; jump_start; paused; type_; zone } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_zone __resource);
  ()
