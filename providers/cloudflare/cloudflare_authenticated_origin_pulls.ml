(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_authenticated_origin_pulls = {
  authenticated_origin_pulls_certificate : string prop option;
      [@option]
      (** The ID of an uploaded Authenticated Origin Pulls certificate. If no hostname is provided, this certificate will be used zone wide as Per-Zone Authenticated Origin Pulls. *)
  enabled : bool prop;
      (** Whether to enable Authenticated Origin Pulls on the given zone or hostname. *)
  hostname : string prop option; [@option]
      (** Specify a hostname to enable Per-Hostname Authenticated Origin Pulls on, using the provided certificate. *)
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Authenticated Origin Pulls resource. A `cloudflare_authenticated_origin_pulls`
resource is required to use Per-Zone or Per-Hostname Authenticated
Origin Pulls. *)

let cloudflare_authenticated_origin_pulls
    ?authenticated_origin_pulls_certificate ?hostname ?id ~enabled
    ~zone_id () : cloudflare_authenticated_origin_pulls =
  {
    authenticated_origin_pulls_certificate;
    enabled;
    hostname;
    id;
    zone_id;
  }

type t = {
  authenticated_origin_pulls_certificate : string prop;
  enabled : bool prop;
  hostname : string prop;
  id : string prop;
  zone_id : string prop;
}

let make ?authenticated_origin_pulls_certificate ?hostname ?id
    ~enabled ~zone_id __id =
  let __type = "cloudflare_authenticated_origin_pulls" in
  let __attrs =
    ({
       authenticated_origin_pulls_certificate =
         Prop.computed __type __id
           "authenticated_origin_pulls_certificate";
       enabled = Prop.computed __type __id "enabled";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_authenticated_origin_pulls
        (cloudflare_authenticated_origin_pulls
           ?authenticated_origin_pulls_certificate ?hostname ?id
           ~enabled ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?authenticated_origin_pulls_certificate
    ?hostname ?id ~enabled ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?authenticated_origin_pulls_certificate ?hostname ?id
      ~enabled ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
