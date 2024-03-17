(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_web_analytics_site__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** cloudflare_web_analytics_site__timeouts *)

type cloudflare_web_analytics_site = {
  account_id : string;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  auto_install : bool;
      (** Whether Cloudflare will automatically inject the JavaScript snippet for orange-clouded sites. **Modifying this attribute will force creation of a new resource.** *)
  host : string option; [@option]
      (** The hostname to use for gray-clouded sites. Must provide only one of `zone_tag`. **Modifying this attribute will force creation of a new resource.** *)
  zone_tag : string option; [@option]
      (** The zone identifier for orange-clouded sites. Must provide only one of `host`. **Modifying this attribute will force creation of a new resource.** *)
  timeouts : cloudflare_web_analytics_site__timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Web Analytics Site resource. *)

let cloudflare_web_analytics_site ?host ?zone_tag ?timeouts
    ~account_id ~auto_install __resource_id =
  let __resource_type = "cloudflare_web_analytics_site" in
  let __resource =
    { account_id; auto_install; host; zone_tag; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_web_analytics_site __resource);
  ()
