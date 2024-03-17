(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_web_analytics_site__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** cloudflare_web_analytics_site__timeouts *)

type cloudflare_web_analytics_site = {
  account_id : string prop;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  auto_install : bool prop;
      (** Whether Cloudflare will automatically inject the JavaScript snippet for orange-clouded sites. **Modifying this attribute will force creation of a new resource.** *)
  host : string prop option; [@option]
      (** The hostname to use for gray-clouded sites. Must provide only one of `zone_tag`. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  zone_tag : string prop option; [@option]
      (** The zone identifier for orange-clouded sites. Must provide only one of `host`. **Modifying this attribute will force creation of a new resource.** *)
  timeouts : cloudflare_web_analytics_site__timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Web Analytics Site resource. *)

let cloudflare_web_analytics_site ?host ?id ?zone_tag ?timeouts
    ~account_id ~auto_install __resource_id =
  let __resource_type = "cloudflare_web_analytics_site" in
  let __resource =
    { account_id; auto_install; host; id; zone_tag; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_web_analytics_site __resource);
  ()
