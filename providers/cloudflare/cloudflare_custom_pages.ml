(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_custom_pages = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. *)
  id : string prop option; [@option]  (** id *)
  state : string prop option; [@option]
      (** Managed state of the custom page. Available values: `default`, `customized`. *)
  type_ : string prop; [@key "type"]
      (** The type of custom page you wish to update. Available values: `basic_challenge`, `waf_challenge`, `waf_block`, `ratelimit_block`, `country_challenge`, `ip_block`, `under_attack`, `500_errors`, `1000_errors`, `managed_challenge`. *)
  url : string prop;
      (** URL of where the custom page source is located. *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. *)
}
[@@deriving yojson_of]
(** Provides a resource which manages Cloudflare custom error pages. *)

let cloudflare_custom_pages ?account_id ?id ?state ?zone_id ~type_
    ~url () : cloudflare_custom_pages =
  { account_id; id; state; type_; url; zone_id }

type t = {
  account_id : string prop;
  id : string prop;
  state : string prop;
  type_ : string prop;
  url : string prop;
  zone_id : string prop;
}

let make ?account_id ?id ?state ?zone_id ~type_ ~url __id =
  let __type = "cloudflare_custom_pages" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
       url = Prop.computed __type __id "url";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_custom_pages
        (cloudflare_custom_pages ?account_id ?id ?state ?zone_id
           ~type_ ~url ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?state ?zone_id ~type_ ~url
    __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?state ?zone_id ~type_ ~url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
