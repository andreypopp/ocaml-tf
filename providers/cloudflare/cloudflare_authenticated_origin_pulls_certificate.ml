(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type cloudflare_authenticated_origin_pulls_certificate = {
  certificate : string prop;
      (** The public client certificate. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  private_key : string prop;
      (** The private key of the client certificate. **Modifying this attribute will force creation of a new resource.** *)
  type_ : string prop; [@key "type"]
      (** The form of Authenticated Origin Pulls to upload the certificate to. Available values: `per-zone`, `per-hostname`. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Authenticated Origin Pulls certificate
resource. An uploaded client certificate is required to use Per-Zone
 or Per-Hostname Authenticated Origin Pulls.
 *)

let timeouts ?create () : timeouts = { create }

let cloudflare_authenticated_origin_pulls_certificate ?id ?timeouts
    ~certificate ~private_key ~type_ ~zone_id () :
    cloudflare_authenticated_origin_pulls_certificate =
  { certificate; id; private_key; type_; zone_id; timeouts }

type t = {
  certificate : string prop;
  expires_on : string prop;
  id : string prop;
  issuer : string prop;
  private_key : string prop;
  serial_number : string prop;
  signature : string prop;
  status : string prop;
  type_ : string prop;
  uploaded_on : string prop;
  zone_id : string prop;
}

let make ?id ?timeouts ~certificate ~private_key ~type_ ~zone_id __id
    =
  let __type = "cloudflare_authenticated_origin_pulls_certificate" in
  let __attrs =
    ({
       certificate = Prop.computed __type __id "certificate";
       expires_on = Prop.computed __type __id "expires_on";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       private_key = Prop.computed __type __id "private_key";
       serial_number = Prop.computed __type __id "serial_number";
       signature = Prop.computed __type __id "signature";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
       uploaded_on = Prop.computed __type __id "uploaded_on";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_authenticated_origin_pulls_certificate
        (cloudflare_authenticated_origin_pulls_certificate ?id
           ?timeouts ~certificate ~private_key ~type_ ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~certificate ~private_key
    ~type_ ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~certificate ~private_key ~type_ ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
