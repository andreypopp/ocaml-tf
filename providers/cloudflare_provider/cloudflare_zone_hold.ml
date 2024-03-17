(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_zone_hold = {
  hold : bool;  (** Enablement status of the zone hold. *)
  include_subdomains : bool option; [@option]
      (** Whether to extend to block any subdomain of the given zone. *)
  zone_id : string;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Zone Hold resource that prevents adding
the hostname to another account for use.
 *)

let cloudflare_zone_hold ?include_subdomains ~hold ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_zone_hold" in
  let __resource = { hold; include_subdomains; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_zone_hold __resource);
  ()
