(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_mtls_certificate = {
  account_id : string prop;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  ca : bool prop;
      (** Whether this is a CA or leaf certificate. **Modifying this attribute will force creation of a new resource.** *)
  certificates : string prop;
      (** Certificate you intend to use with mTLS-enabled services. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]
      (** Optional unique name for the certificate. **Modifying this attribute will force creation of a new resource.** *)
  private_key : string prop option; [@option]
      (** The certificate's private key. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare mTLS certificate resource. These certificates may be used with mTLS enabled Cloudflare services.
 *)

let cloudflare_mtls_certificate ?id ?name ?private_key ~account_id
    ~ca ~certificates () : cloudflare_mtls_certificate =
  { account_id; ca; certificates; id; name; private_key }

type t = {
  account_id : string prop;
  ca : bool prop;
  certificates : string prop;
  expires_on : string prop;
  id : string prop;
  issuer : string prop;
  name : string prop;
  private_key : string prop;
  serial_number : string prop;
  signature : string prop;
  uploaded_on : string prop;
}

let make ?id ?name ?private_key ~account_id ~ca ~certificates __id =
  let __type = "cloudflare_mtls_certificate" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       ca = Prop.computed __type __id "ca";
       certificates = Prop.computed __type __id "certificates";
       expires_on = Prop.computed __type __id "expires_on";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       name = Prop.computed __type __id "name";
       private_key = Prop.computed __type __id "private_key";
       serial_number = Prop.computed __type __id "serial_number";
       signature = Prop.computed __type __id "signature";
       uploaded_on = Prop.computed __type __id "uploaded_on";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_mtls_certificate
        (cloudflare_mtls_certificate ?id ?name ?private_key
           ~account_id ~ca ~certificates ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?private_key ~account_id ~ca
    ~certificates __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?private_key ~account_id ~ca ~certificates __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
