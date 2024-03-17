(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_mtls_certificate = {
  account_id : string;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  ca : bool;
      (** Whether this is a CA or leaf certificate. **Modifying this attribute will force creation of a new resource.** *)
  certificates : string;
      (** Certificate you intend to use with mTLS-enabled services. **Modifying this attribute will force creation of a new resource.** *)
  name : string option; [@option]
      (** Optional unique name for the certificate. **Modifying this attribute will force creation of a new resource.** *)
  private_key : string option; [@option]
      (** The certificate's private key. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare mTLS certificate resource. These certificates may be used with mTLS enabled Cloudflare services.
 *)

let cloudflare_mtls_certificate ?name ?private_key ~account_id ~ca
    ~certificates __resource_id =
  let __resource_type = "cloudflare_mtls_certificate" in
  let __resource =
    { account_id; ca; certificates; name; private_key }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_mtls_certificate __resource);
  ()
