(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?host ?id ?zone_tag ?timeouts ~account_id ~auto_install __id
    =
  let __type = "cloudflare_web_analytics_site" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       auto_install = Prop.computed __type __id "auto_install";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       ruleset_id = Prop.computed __type __id "ruleset_id";
       site_tag = Prop.computed __type __id "site_tag";
       site_token = Prop.computed __type __id "site_token";
       snippet = Prop.computed __type __id "snippet";
       zone_tag = Prop.computed __type __id "zone_tag";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_web_analytics_site
        (cloudflare_web_analytics_site ?host ?id ?zone_tag ?timeouts
           ~account_id ~auto_install ());
    attrs = __attrs;
  }

let register ?tf_module ?host ?id ?zone_tag ?timeouts ~account_id
    ~auto_install __id =
  let (r : _ Tf_core.resource) =
    make ?host ?id ?zone_tag ?timeouts ~account_id ~auto_install __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
