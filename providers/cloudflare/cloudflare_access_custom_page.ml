(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_access_custom_page = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. **Modifying this attribute will force creation of a new resource.** *)
  app_count : float prop option; [@option]
      (** Number of apps to display on the custom page. *)
  custom_html : string prop option; [@option]
      (** Custom HTML to display on the custom page. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Friendly name of the Access Custom Page configuration. *)
  type_ : string prop; [@key "type"]
      (** Type of Access custom page to create. Available values: `identity_denied`, `forbidden`. *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to customize the pages your end users will see
when trying to reach applications behind Cloudflare Access.
 *)

let cloudflare_access_custom_page ?account_id ?app_count ?custom_html
    ?id ?zone_id ~name ~type_ () : cloudflare_access_custom_page =
  { account_id; app_count; custom_html; id; name; type_; zone_id }

type t = {
  account_id : string prop;
  app_count : float prop;
  custom_html : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  zone_id : string prop;
}

let make ?account_id ?app_count ?custom_html ?id ?zone_id ~name
    ~type_ __id =
  let __type = "cloudflare_access_custom_page" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       app_count = Prop.computed __type __id "app_count";
       custom_html = Prop.computed __type __id "custom_html";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_custom_page
        (cloudflare_access_custom_page ?account_id ?app_count
           ?custom_html ?id ?zone_id ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?app_count ?custom_html ?id
    ?zone_id ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?app_count ?custom_html ?id ?zone_id ~name
      ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
