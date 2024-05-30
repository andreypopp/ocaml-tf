(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dns_records = {
  expiration : string prop;
  fqdn : string prop;
  record_type : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_records) -> ()

let yojson_of_dns_records =
  (function
   | {
       expiration = v_expiration;
       fqdn = v_fqdn;
       record_type = v_record_type;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_record_type in
         ("record_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expiration in
         ("expiration", arg) :: bnds
       in
       `Assoc bnds
    : dns_records -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_records

[@@@deriving.end]

type okta_domain = { domain_id_or_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_domain) -> ()

let yojson_of_okta_domain =
  (function
   | { domain_id_or_name = v_domain_id_or_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_id_or_name
         in
         ("domain_id_or_name", arg) :: bnds
       in
       `Assoc bnds
    : okta_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_domain

[@@@deriving.end]

let okta_domain ~domain_id_or_name () : okta_domain =
  { domain_id_or_name }

type t = {
  tf_name : string;
  certificate_source_type : string prop;
  dns_records : dns_records list prop;
  domain : string prop;
  domain_id_or_name : string prop;
  id : string prop;
  public_certificate : (string * string) list prop;
  validation_status : string prop;
}

let make ~domain_id_or_name __id =
  let __type = "okta_domain" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_source_type =
         Prop.computed __type __id "certificate_source_type";
       dns_records = Prop.computed __type __id "dns_records";
       domain = Prop.computed __type __id "domain";
       domain_id_or_name =
         Prop.computed __type __id "domain_id_or_name";
       id = Prop.computed __type __id "id";
       public_certificate =
         Prop.computed __type __id "public_certificate";
       validation_status =
         Prop.computed __type __id "validation_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_okta_domain (okta_domain ~domain_id_or_name ());
    attrs = __attrs;
  }

let register ?tf_module ~domain_id_or_name __id =
  let (r : _ Tf_core.resource) = make ~domain_id_or_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
