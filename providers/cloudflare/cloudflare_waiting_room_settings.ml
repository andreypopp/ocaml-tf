(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?search_engine_crawler_bypass ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_waiting_room_settings" in
  let __resource =
    cloudflare_waiting_room_settings ?id
      ?search_engine_crawler_bypass ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_waiting_room_settings __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       search_engine_crawler_bypass =
         Prop.computed __resource_type __resource_id
           "search_engine_crawler_bypass";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
