(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_hostname_tls_setting_ciphers = {
  hostname : string prop;
      (** Hostname that belongs to this zone name. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  ports : float prop list option; [@option]
      (** Ports to use within the IP rule. *)
  value : string prop list;  (** Ciphers suites value. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare per-hostname TLS setting resource, specifically for ciphers suites. Used to set ciphers suites for hostnames under the specified zone.
 *)

let cloudflare_hostname_tls_setting_ciphers ?id ?ports ~hostname
    ~value ~zone_id () : cloudflare_hostname_tls_setting_ciphers =
  { hostname; id; ports; value; zone_id }

type t = {
  created_at : string prop;
  hostname : string prop;
  id : string prop;
  ports : float list prop;
  updated_at : string prop;
  value : string list prop;
  zone_id : string prop;
}

let make ?id ?ports ~hostname ~value ~zone_id __id =
  let __type = "cloudflare_hostname_tls_setting_ciphers" in
  let __attrs =
    ({
       created_at = Prop.computed __type __id "created_at";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       ports = Prop.computed __type __id "ports";
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
      yojson_of_cloudflare_hostname_tls_setting_ciphers
        (cloudflare_hostname_tls_setting_ciphers ?id ?ports ~hostname
           ~value ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ports ~hostname ~value ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ports ~hostname ~value ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
