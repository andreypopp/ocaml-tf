(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_tiered_cache = {
  cache_type : string prop;
      (** The typed of tiered cache to utilize on the zone. Available values: `generic`, `smart`, `off`. *)
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages Cloudflare Tiered Cache settings.
This allows you to adjust topologies for your zone.
 *)

let cloudflare_tiered_cache ?id ~cache_type ~zone_id () :
    cloudflare_tiered_cache =
  { cache_type; id; zone_id }

type t = {
  cache_type : string prop;
  id : string prop;
  zone_id : string prop;
}

let register ?tf_module ?id ~cache_type ~zone_id __resource_id =
  let __resource_type = "cloudflare_tiered_cache" in
  let __resource =
    cloudflare_tiered_cache ?id ~cache_type ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_tiered_cache __resource);
  let __resource_attributes =
    ({
       cache_type =
         Prop.computed __resource_type __resource_id "cache_type";
       id = Prop.computed __resource_type __resource_id "id";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
