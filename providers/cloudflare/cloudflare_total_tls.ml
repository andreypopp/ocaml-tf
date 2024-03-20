(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_total_tls = {
  certificate_authority : string prop option; [@option]
      (** The Certificate Authority that Total TLS certificates will be issued through. Available values: `google`, `lets_encrypt`. *)
  enabled : bool prop;  (** Enable Total TLS for the zone. *)
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource which manages Total TLS for a zone.
 *)

let cloudflare_total_tls ?certificate_authority ?id ~enabled ~zone_id
    () : cloudflare_total_tls =
  { certificate_authority; enabled; id; zone_id }

type t = {
  certificate_authority : string prop;
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

let make ?certificate_authority ?id ~enabled ~zone_id __id =
  let __type = "cloudflare_total_tls" in
  let __attrs =
    ({
       certificate_authority =
         Prop.computed __type __id "certificate_authority";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_total_tls
        (cloudflare_total_tls ?certificate_authority ?id ~enabled
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_authority ?id ~enabled ~zone_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_authority ?id ~enabled ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
