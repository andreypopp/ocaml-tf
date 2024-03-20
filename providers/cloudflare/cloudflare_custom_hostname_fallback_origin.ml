(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_custom_hostname_fallback_origin = {
  id : string prop option; [@option]  (** id *)
  origin : string prop;
      (** Hostname you intend to fallback requests to. Origin must be a proxied A/AAAA/CNAME DNS record within Clouldflare. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare custom hostname fallback origin resource. *)

let cloudflare_custom_hostname_fallback_origin ?id ~origin ~zone_id
    () : cloudflare_custom_hostname_fallback_origin =
  { id; origin; zone_id }

type t = {
  id : string prop;
  origin : string prop;
  status : string prop;
  zone_id : string prop;
}

let make ?id ~origin ~zone_id __id =
  let __type = "cloudflare_custom_hostname_fallback_origin" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       origin = Prop.computed __type __id "origin";
       status = Prop.computed __type __id "status";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_custom_hostname_fallback_origin
        (cloudflare_custom_hostname_fallback_origin ?id ~origin
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~origin ~zone_id __id =
  let (r : _ Tf_core.resource) = make ?id ~origin ~zone_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
