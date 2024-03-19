(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~certificate ~private_key
    ~type_ ~zone_id __resource_id =
  let __resource_type =
    "cloudflare_authenticated_origin_pulls_certificate"
  in
  let __resource =
    cloudflare_authenticated_origin_pulls_certificate ?id ?timeouts
      ~certificate ~private_key ~type_ ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_authenticated_origin_pulls_certificate
       __resource);
  let __resource_attributes =
    ({
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       expires_on =
         Prop.computed __resource_type __resource_id "expires_on";
       id = Prop.computed __resource_type __resource_id "id";
       issuer = Prop.computed __resource_type __resource_id "issuer";
       private_key =
         Prop.computed __resource_type __resource_id "private_key";
       serial_number =
         Prop.computed __resource_type __resource_id "serial_number";
       signature =
         Prop.computed __resource_type __resource_id "signature";
       status = Prop.computed __resource_type __resource_id "status";
       type_ = Prop.computed __resource_type __resource_id "type";
       uploaded_on =
         Prop.computed __resource_type __resource_id "uploaded_on";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
