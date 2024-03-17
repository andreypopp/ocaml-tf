(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_origin_ca_certificate = {
  csr : string;
      (** The Certificate Signing Request. Must be newline-encoded. **Modifying this attribute will force creation of a new resource.** *)
  hostnames : string list;
      (** A list of hostnames or wildcard names bound to the certificate. **Modifying this attribute will force creation of a new resource.** *)
  id : string option; [@option]  (** id *)
  min_days_for_renewal : float option; [@option]
      (** Number of days prior to the expiry to trigger a renewal of the certificate if a Terraform operation is run. *)
  request_type : string;
      (** The signature type desired on the certificate. Available values: `origin-rsa`, `origin-ecc`, `keyless-certificate`. **Modifying this attribute will force creation of a new resource.** *)
  requested_validity : float option; [@option]
      (** The number of days for which the certificate should be valid. Available values: `7`, `30`, `90`, `365`, `730`, `1095`, `5475`. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Origin CA certificate used to protect traffic to your origin without involving a third party Certificate Authority. *)

let cloudflare_origin_ca_certificate ?id ?min_days_for_renewal
    ?requested_validity ~csr ~hostnames ~request_type __resource_id =
  let __resource_type = "cloudflare_origin_ca_certificate" in
  let __resource =
    {
      csr;
      hostnames;
      id;
      min_days_for_renewal;
      request_type;
      requested_validity;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_origin_ca_certificate __resource);
  ()
