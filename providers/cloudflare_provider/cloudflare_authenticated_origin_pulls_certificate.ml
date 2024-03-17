(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_authenticated_origin_pulls_certificate__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** cloudflare_authenticated_origin_pulls_certificate__timeouts *)

type cloudflare_authenticated_origin_pulls_certificate = {
  certificate : string;
      (** The public client certificate. **Modifying this attribute will force creation of a new resource.** *)
  private_key : string;
      (** The private key of the client certificate. **Modifying this attribute will force creation of a new resource.** *)
  type_ : string; [@key "type"]
      (** The form of Authenticated Origin Pulls to upload the certificate to. Available values: `per-zone`, `per-hostname`. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  timeouts :
    cloudflare_authenticated_origin_pulls_certificate__timeouts
    option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Authenticated Origin Pulls certificate
resource. An uploaded client certificate is required to use Per-Zone
 or Per-Hostname Authenticated Origin Pulls.
 *)

let cloudflare_authenticated_origin_pulls_certificate ?timeouts
    ~certificate ~private_key ~type_ ~zone_id __resource_id =
  let __resource_type =
    "cloudflare_authenticated_origin_pulls_certificate"
  in
  let __resource =
    { certificate; private_key; type_; zone_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_authenticated_origin_pulls_certificate
       __resource);
  ()
