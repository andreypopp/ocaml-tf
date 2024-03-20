(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_waiting_room_settings = {
  id : string prop option; [@option]  (** id *)
  search_engine_crawler_bypass : bool prop option; [@option]
      (** Whether to allow verified search engine crawlers to bypass all waiting rooms on this zone. Defaults to `false`. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Configure zone-wide settings for Cloudflare waiting rooms. *)

let cloudflare_waiting_room_settings ?id
    ?search_engine_crawler_bypass ~zone_id () :
    cloudflare_waiting_room_settings =
  { id; search_engine_crawler_bypass; zone_id }

type t = {
  id : string prop;
  search_engine_crawler_bypass : bool prop;
  zone_id : string prop;
}

let make ?id ?search_engine_crawler_bypass ~zone_id __id =
  let __type = "cloudflare_waiting_room_settings" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       search_engine_crawler_bypass =
         Prop.computed __type __id "search_engine_crawler_bypass";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_waiting_room_settings
        (cloudflare_waiting_room_settings ?id
           ?search_engine_crawler_bypass ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?search_engine_crawler_bypass ~zone_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?search_engine_crawler_bypass ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
