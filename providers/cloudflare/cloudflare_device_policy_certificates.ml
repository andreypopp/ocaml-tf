(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_device_policy_certificates = {
  enabled : bool prop;
      (** `true` if certificate generation is enabled. *)
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare device policy certificates resource. Device
policy certificate resources enable client device certificate
generation.
 *)

let cloudflare_device_policy_certificates ?id ~enabled ~zone_id () :
    cloudflare_device_policy_certificates =
  { enabled; id; zone_id }

type t = {
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

let make ?id ~enabled ~zone_id __id =
  let __type = "cloudflare_device_policy_certificates" in
  let __attrs =
    ({
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
      yojson_of_cloudflare_device_policy_certificates
        (cloudflare_device_policy_certificates ?id ~enabled ~zone_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~enabled ~zone_id __id =
  let (r : _ Tf_core.resource) = make ?id ~enabled ~zone_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
