(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_url_normalization_settings = {
  id : string prop option; [@option]  (** id *)
  scope : string prop;  (** The scope of the URL normalization. *)
  type_ : string prop; [@key "type"]
      (** The type of URL normalization performed by Cloudflare. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to manage URL Normalization Settings.
 *)

let cloudflare_url_normalization_settings ?id ~scope ~type_ ~zone_id
    () : cloudflare_url_normalization_settings =
  { id; scope; type_; zone_id }

type t = {
  id : string prop;
  scope : string prop;
  type_ : string prop;
  zone_id : string prop;
}

let make ?id ~scope ~type_ ~zone_id __id =
  let __type = "cloudflare_url_normalization_settings" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       scope = Prop.computed __type __id "scope";
       type_ = Prop.computed __type __id "type";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_url_normalization_settings
        (cloudflare_url_normalization_settings ?id ~scope ~type_
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~scope ~type_ ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~scope ~type_ ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
