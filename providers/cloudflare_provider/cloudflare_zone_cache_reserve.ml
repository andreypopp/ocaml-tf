(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_zone_cache_reserve = {
  enabled : bool prop;
      (** Whether to enable or disable Cache Reserve support for a given zone. *)
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Cache Reserve resource. Cache Reserve can
increase cache lifetimes by automatically storing all cacheable
files in Cloudflare's persistent object storage buckets.

Note: Using Cache Reserve without Tiered Cache is not recommended.
 *)

let cloudflare_zone_cache_reserve ?id ~enabled ~zone_id __resource_id
    =
  let __resource_type = "cloudflare_zone_cache_reserve" in
  let __resource = { enabled; id; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_zone_cache_reserve __resource);
  ()
