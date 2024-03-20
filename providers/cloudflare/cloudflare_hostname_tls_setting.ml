(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_hostname_tls_setting = {
  hostname : string prop;
      (** Hostname that belongs to this zone name. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  setting : string prop;
      (** TLS setting name. **Modifying this attribute will force creation of a new resource.** *)
  value : string prop;  (** TLS setting value. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare per-hostname TLS setting resource. Used to set TLS settings for hostnames under the specified zone.
 *)

let cloudflare_hostname_tls_setting ?id ~hostname ~setting ~value
    ~zone_id () : cloudflare_hostname_tls_setting =
  { hostname; id; setting; value; zone_id }

type t = {
  created_at : string prop;
  hostname : string prop;
  id : string prop;
  setting : string prop;
  updated_at : string prop;
  value : string prop;
  zone_id : string prop;
}

let make ?id ~hostname ~setting ~value ~zone_id __id =
  let __type = "cloudflare_hostname_tls_setting" in
  let __attrs =
    ({
       created_at = Prop.computed __type __id "created_at";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       setting = Prop.computed __type __id "setting";
       updated_at = Prop.computed __type __id "updated_at";
       value = Prop.computed __type __id "value";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_hostname_tls_setting
        (cloudflare_hostname_tls_setting ?id ~hostname ~setting
           ~value ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~hostname ~setting ~value ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~hostname ~setting ~value ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
