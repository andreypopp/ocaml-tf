(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let cloudflare_mtls_certificate ?id ?name ?private_key ~account_id
    ~ca ~certificates __resource_id =
  let __resource_type = "cloudflare_mtls_certificate" in
  let __resource =
    ({ account_id; ca; certificates; id; name; private_key }
      : cloudflare_mtls_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_mtls_certificate __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       ca = Prop.computed __resource_type __resource_id "ca";
       certificates =
         Prop.computed __resource_type __resource_id "certificates";
       expires_on =
         Prop.computed __resource_type __resource_id "expires_on";
       id = Prop.computed __resource_type __resource_id "id";
       issuer = Prop.computed __resource_type __resource_id "issuer";
       name = Prop.computed __resource_type __resource_id "name";
       private_key =
         Prop.computed __resource_type __resource_id "private_key";
       serial_number =
         Prop.computed __resource_type __resource_id "serial_number";
       signature =
         Prop.computed __resource_type __resource_id "signature";
       uploaded_on =
         Prop.computed __resource_type __resource_id "uploaded_on";
     }
      : t)
  in
  __resource_attributes
