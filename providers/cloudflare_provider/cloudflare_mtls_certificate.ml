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

let cloudflare_mtls_certificate ?id ?name ?private_key ~account_id
    ~ca ~certificates __resource_id =
  let __resource_type = "cloudflare_mtls_certificate" in
  let __resource =
    { account_id; ca; certificates; id; name; private_key }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_mtls_certificate __resource);
  ()
