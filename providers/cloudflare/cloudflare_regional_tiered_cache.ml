(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_regional_tiered_cache = {
  id : string prop option; [@option]  (** id *)
  value : string prop;
      (** Value of the Regional Tiered Cache zone setting. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Instructs Cloudflare to check a regional hub data center on the way to your upper tier.
This can help improve performance for smart and custom tiered cache topologies.
 *)

let cloudflare_regional_tiered_cache ?id ~value ~zone_id () :
    cloudflare_regional_tiered_cache =
  { id; value; zone_id }

type t = {
  id : string prop;
  value : string prop;
  zone_id : string prop;
}

let make ?id ~value ~zone_id __id =
  let __type = "cloudflare_regional_tiered_cache" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       value = Prop.computed __type __id "value";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_regional_tiered_cache
        (cloudflare_regional_tiered_cache ?id ~value ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~value ~zone_id __id =
  let (r : _ Tf_core.resource) = make ?id ~value ~zone_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
