(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Web Analytics Site resource. *)

let timeouts ?create () : timeouts = { create }

let cloudflare_web_analytics_site ?host ?id ?zone_tag ?timeouts
    ~account_id ~auto_install () : cloudflare_web_analytics_site =
  { account_id; auto_install; host; id; zone_tag; timeouts }

type t = {
  account_id : string prop;
  auto_install : bool prop;
  host : string prop;
  id : string prop;
  ruleset_id : string prop;
  site_tag : string prop;
  site_token : string prop;
  snippet : string prop;
  zone_tag : string prop;
}

let register ?tf_module ?host ?id ?zone_tag ?timeouts ~account_id
    ~auto_install __resource_id =
  let __resource_type = "cloudflare_web_analytics_site" in
  let __resource =
    cloudflare_web_analytics_site ?host ?id ?zone_tag ?timeouts
      ~account_id ~auto_install ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_web_analytics_site __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       auto_install =
         Prop.computed __resource_type __resource_id "auto_install";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       ruleset_id =
         Prop.computed __resource_type __resource_id "ruleset_id";
       site_tag =
         Prop.computed __resource_type __resource_id "site_tag";
       site_token =
         Prop.computed __resource_type __resource_id "site_token";
       snippet =
         Prop.computed __resource_type __resource_id "snippet";
       zone_tag =
         Prop.computed __resource_type __resource_id "zone_tag";
     }
      : t)
  in
  __resource_attributes
