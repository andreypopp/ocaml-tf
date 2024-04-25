(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type validation_errors = unit [@@deriving_inline yojson_of]

let _ = fun (_ : validation_errors) -> ()

let yojson_of_validation_errors =
  (yojson_of_unit
    : validation_errors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_errors

[@@@deriving.end]

type validation_records = {
  cname_name : string prop option; [@option]
  cname_target : string prop option; [@option]
  emails : string prop list option; [@option]
  http_body : string prop option; [@option]
  http_url : string prop option; [@option]
  txt_name : string prop option; [@option]
  txt_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_records) -> ()

let yojson_of_validation_records =
  (function
   | {
       cname_name = v_cname_name;
       cname_target = v_cname_target;
       emails = v_emails;
       http_body = v_http_body;
       http_url = v_http_url;
       txt_name = v_txt_name;
       txt_value = v_txt_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_txt_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "txt_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_txt_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "txt_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_body", arg in
             bnd :: bnds
       in
       let bnds =
         match v_emails with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "emails", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cname_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cname_target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cname_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cname_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : validation_records -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_records

[@@@deriving.end]

type cloudflare_certificate_pack = {
  certificate_authority : string prop;
  cloudflare_branding : bool prop option; [@option]
  hosts : string prop list;
  id : string prop option; [@option]
  type_ : string prop; [@key "type"]
  validation_method : string prop;
  validity_days : float prop;
  wait_for_active_status : bool prop option; [@option]
  zone_id : string prop;
  validation_errors : validation_errors list;
  validation_records : validation_records list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_certificate_pack) -> ()

let yojson_of_cloudflare_certificate_pack =
  (function
   | {
       certificate_authority = v_certificate_authority;
       cloudflare_branding = v_cloudflare_branding;
       hosts = v_hosts;
       id = v_id;
       type_ = v_type_;
       validation_method = v_validation_method;
       validity_days = v_validity_days;
       wait_for_active_status = v_wait_for_active_status;
       zone_id = v_zone_id;
       validation_errors = v_validation_errors;
       validation_records = v_validation_records;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_validation_records
             v_validation_records
         in
         ("validation_records", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_validation_errors
             v_validation_errors
         in
         ("validation_errors", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_wait_for_active_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_active_status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_validity_days in
         ("validity_days", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_validation_method
         in
         ("validation_method", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_hosts
         in
         ("hosts", arg) :: bnds
       in
       let bnds =
         match v_cloudflare_branding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cloudflare_branding", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_authority
         in
         ("certificate_authority", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_certificate_pack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_certificate_pack

[@@@deriving.end]

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
    ?wait_for_active_status ?(validation_errors = [])
    ?(validation_records = []) ~certificate_authority ~hosts ~type_
    ~validation_method ~validity_days ~zone_id () :
    cloudflare_certificate_pack =
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
    ?(validation_errors = []) ?(validation_records = [])
    ~certificate_authority ~hosts ~type_ ~validation_method
    ~validity_days ~zone_id __id =
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
           ?wait_for_active_status ~validation_errors
           ~validation_records ~certificate_authority ~hosts ~type_
           ~validation_method ~validity_days ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cloudflare_branding ?id
    ?wait_for_active_status ?(validation_errors = [])
    ?(validation_records = []) ~certificate_authority ~hosts ~type_
    ~validation_method ~validity_days ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?cloudflare_branding ?id ?wait_for_active_status
      ~validation_errors ~validation_records ~certificate_authority
      ~hosts ~type_ ~validation_method ~validity_days ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
