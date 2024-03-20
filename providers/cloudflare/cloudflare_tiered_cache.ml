(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~cache_type ~zone_id __id =
  let __type = "cloudflare_tiered_cache" in
  let __attrs =
    ({
       cache_type = Prop.computed __type __id "cache_type";
       id = Prop.computed __type __id "id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_tiered_cache
        (cloudflare_tiered_cache ?id ~cache_type ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cache_type ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~cache_type ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
