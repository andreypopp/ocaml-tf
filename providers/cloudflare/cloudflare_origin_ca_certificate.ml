(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_origin_ca_certificate = {
  csr : string prop;
      (** The Certificate Signing Request. Must be newline-encoded. **Modifying this attribute will force creation of a new resource.** *)
  hostnames : string prop list;
      (** A list of hostnames or wildcard names bound to the certificate. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  min_days_for_renewal : float prop option; [@option]
      (** Number of days prior to the expiry to trigger a renewal of the certificate if a Terraform operation is run. *)
  request_type : string prop;
      (** The signature type desired on the certificate. Available values: `origin-rsa`, `origin-ecc`, `keyless-certificate`. **Modifying this attribute will force creation of a new resource.** *)
  requested_validity : float prop option; [@option]
      (** The number of days for which the certificate should be valid. Available values: `7`, `30`, `90`, `365`, `730`, `1095`, `5475`. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Origin CA certificate used to protect traffic to your origin without involving a third party Certificate Authority. *)

let cloudflare_origin_ca_certificate ?id ?min_days_for_renewal
    ?requested_validity ~csr ~hostnames ~request_type () :
    cloudflare_origin_ca_certificate =
  {
    csr;
    hostnames;
    id;
    min_days_for_renewal;
    request_type;
    requested_validity;
  }

type t = {
  certificate : string prop;
  csr : string prop;
  expires_on : string prop;
  hostnames : string list prop;
  id : string prop;
  min_days_for_renewal : float prop;
  request_type : string prop;
  requested_validity : float prop;
}

let make ?id ?min_days_for_renewal ?requested_validity ~csr
    ~hostnames ~request_type __id =
  let __type = "cloudflare_origin_ca_certificate" in
  let __attrs =
    ({
       certificate = Prop.computed __type __id "certificate";
       csr = Prop.computed __type __id "csr";
       expires_on = Prop.computed __type __id "expires_on";
       hostnames = Prop.computed __type __id "hostnames";
       id = Prop.computed __type __id "id";
       min_days_for_renewal =
         Prop.computed __type __id "min_days_for_renewal";
       request_type = Prop.computed __type __id "request_type";
       requested_validity =
         Prop.computed __type __id "requested_validity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_origin_ca_certificate
        (cloudflare_origin_ca_certificate ?id ?min_days_for_renewal
           ?requested_validity ~csr ~hostnames ~request_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?min_days_for_renewal ?requested_validity
    ~csr ~hostnames ~request_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?min_days_for_renewal ?requested_validity ~csr
      ~hostnames ~request_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
