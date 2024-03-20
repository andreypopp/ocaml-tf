(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let cloudflare_zone_cache_reserve ?id ~enabled ~zone_id () :
    cloudflare_zone_cache_reserve =
  { enabled; id; zone_id }

type t = {
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

let make ?id ~enabled ~zone_id __id =
  let __type = "cloudflare_zone_cache_reserve" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_zone_cache_reserve
        (cloudflare_zone_cache_reserve ?id ~enabled ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~enabled ~zone_id __id =
  let (r : _ Tf_core.resource) = make ?id ~enabled ~zone_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
