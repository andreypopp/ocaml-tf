(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_origin_ca_certificate = {
  csr : string;
      (** The Certificate Signing Request. Must be newline-encoded. **Modifying this attribute will force creation of a new resource.** *)
  hostnames : string list;
      (** A list of hostnames or wildcard names bound to the certificate. **Modifying this attribute will force creation of a new resource.** *)
  min_days_for_renewal : float option; [@option]
      (** Number of days prior to the expiry to trigger a renewal of the certificate if a Terraform operation is run. *)
  request_type : string;
      (** The signature type desired on the certificate. Available values: `origin-rsa`, `origin-ecc`, `keyless-certificate`. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Origin CA certificate used to protect traffic to your origin without involving a third party Certificate Authority. *)

let cloudflare_origin_ca_certificate ?min_days_for_renewal ~csr
    ~hostnames ~request_type __resource_id =
  let __resource_type = "cloudflare_origin_ca_certificate" in
  let __resource =
    { csr; hostnames; min_days_for_renewal; request_type }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_origin_ca_certificate __resource);
  ()
