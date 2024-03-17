(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_tiered_cache = {
  cache_type : string;
      (** The typed of tiered cache to utilize on the zone. Available values: `generic`, `smart`, `off`. *)
  id : string option; [@option]  (** id *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages Cloudflare Tiered Cache settings.
This allows you to adjust topologies for your zone.
 *)

let cloudflare_tiered_cache ?id ~cache_type ~zone_id __resource_id =
  let __resource_type = "cloudflare_tiered_cache" in
  let __resource = { cache_type; id; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_tiered_cache __resource);
  ()
