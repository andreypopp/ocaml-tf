(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_zone_hold = {
  hold : bool prop;  (** Enablement status of the zone hold. *)
  hold_after : string prop option; [@option]
      (** The RFC3339 compatible timestamp when to automatically re-enable the zone hold. *)
  id : string prop option; [@option]  (** id *)
  include_subdomains : bool prop option; [@option]
      (** Whether to extend to block any subdomain of the given zone. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Zone Hold resource that prevents adding
the hostname to another account for use.
 *)

let cloudflare_zone_hold ?hold_after ?id ?include_subdomains ~hold
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_zone_hold" in
  let __resource =
    { hold; hold_after; id; include_subdomains; zone_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_zone_hold __resource);
  ()
