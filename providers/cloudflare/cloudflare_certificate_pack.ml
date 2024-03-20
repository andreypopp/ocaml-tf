(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type validation_errors = unit [@@deriving yojson_of]

type validation_records = {
  cname_name : string prop option; [@option]  (** cname_name *)
  cname_target : string prop option; [@option]  (** cname_target *)
  emails : string prop list option; [@option]  (** emails *)
  http_body : string prop option; [@option]  (** http_body *)
  http_url : string prop option; [@option]  (** http_url *)
  txt_name : string prop option; [@option]  (** txt_name *)
  txt_value : string prop option; [@option]  (** txt_value *)
}
[@@deriving yojson_of]
(** validation_records *)

type cloudflare_certificate_pack = {
  certificate_authority : string prop;
      (** Which certificate authority to issue the certificate pack. Available values: `digicert`, `lets_encrypt`, `google`. **Modifying this attribute will force creation of a new resource.** *)
  cloudflare_branding : bool prop option; [@option]
      (** Whether or not to include Cloudflare branding. This will add `sni.cloudflaressl.com` as the Common Name if set to `true`. **Modifying this attribute will force creation of a new resource.** *)
  hosts : string prop list;
      (** List of hostnames to provision the certificate pack for. The zone name must be included as a host. Note: If using Let's Encrypt, you cannot use individual subdomains and only a wildcard for subdomain is available. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  type_ : string prop; [@key "type"]
      (** Certificate pack configuration type. Available values: `advanced`. **Modifying this attribute will force creation of a new resource.** *)
  validation_method : string prop;
      (** Which validation method to use in order to prove domain ownership. Available values: `txt`, `http`, `email`. **Modifying this attribute will force creation of a new resource.** *)
  validity_days : float prop;
      (** How long the certificate is valid for. Note: If using Let's Encrypt, this value can only be 90 days. Available values: `14`, `30`, `90`, `365`. **Modifying this attribute will force creation of a new resource.** *)
  wait_for_active_status : bool prop option; [@option]
      (** Whether or not to wait for a certificate pack to reach status `active` during creation. Defaults to `false`. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  validation_errors : validation_errors list;
  validation_records : validation_records list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Certificate Pack resource that is used to
provision managed TLS certificates.
 *)

let validation_errors () = ()

let validation_records ?cname_name ?cname_target ?emails ?http_body
    ?http_url ?txt_name ?txt_value () : validation_records =
  {
    cname_name;
    cname_target;
    emails;
    http_body;
    http_url;
    txt_name;
    txt_value;
  }

let cloudflare_certificate_pack ?cloudflare_branding ?id
    ?wait_for_active_status ~certificate_authority ~hosts ~type_
    ~validation_method ~validity_days ~zone_id ~validation_errors
    ~validation_records () : cloudflare_certificate_pack =
  {
    certificate_authority;
    cloudflare_branding;
    hosts;
    id;
    type_;
    validation_method;
    validity_days;
    wait_for_active_status;
    zone_id;
    validation_errors;
    validation_records;
  }

type t = {
  certificate_authority : string prop;
  cloudflare_branding : bool prop;
  hosts : string list prop;
  id : string prop;
  type_ : string prop;
  validation_method : string prop;
  validity_days : float prop;
  wait_for_active_status : bool prop;
  zone_id : string prop;
}

let make ?cloudflare_branding ?id ?wait_for_active_status
    ~certificate_authority ~hosts ~type_ ~validation_method
    ~validity_days ~zone_id ~validation_errors ~validation_records
    __id =
  let __type = "cloudflare_certificate_pack" in
  let __attrs =
    ({
       certificate_authority =
         Prop.computed __type __id "certificate_authority";
       cloudflare_branding =
         Prop.computed __type __id "cloudflare_branding";
       hosts = Prop.computed __type __id "hosts";
       id = Prop.computed __type __id "id";
       type_ = Prop.computed __type __id "type";
       validation_method =
         Prop.computed __type __id "validation_method";
       validity_days = Prop.computed __type __id "validity_days";
       wait_for_active_status =
         Prop.computed __type __id "wait_for_active_status";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_certificate_pack
        (cloudflare_certificate_pack ?cloudflare_branding ?id
           ?wait_for_active_status ~certificate_authority ~hosts
           ~type_ ~validation_method ~validity_days ~zone_id
           ~validation_errors ~validation_records ());
    attrs = __attrs;
  }

let register ?tf_module ?cloudflare_branding ?id
    ?wait_for_active_status ~certificate_authority ~hosts ~type_
    ~validation_method ~validity_days ~zone_id ~validation_errors
    ~validation_records __id =
  let (r : _ Tf_core.resource) =
    make ?cloudflare_branding ?id ?wait_for_active_status
      ~certificate_authority ~hosts ~type_ ~validation_method
      ~validity_days ~zone_id ~validation_errors ~validation_records
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
