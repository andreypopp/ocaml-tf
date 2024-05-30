(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dns_records = {
  fqdn : string prop;
  record_type : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_records) -> ()

let yojson_of_dns_records =
  (function
   | { fqdn = v_fqdn; record_type = v_record_type; value = v_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_record_type in
         ("record_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       `Assoc bnds
    : dns_records -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_records

[@@@deriving.end]

type okta_email_sender = {
  from_address : string prop;
  from_name : string prop;
  id : string prop option; [@option]
  subdomain : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_email_sender) -> ()

let yojson_of_okta_email_sender =
  (function
   | {
       from_address = v_from_address;
       from_name = v_from_name;
       id = v_id;
       subdomain = v_subdomain;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subdomain in
         ("subdomain", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_from_name in
         ("from_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_from_address in
         ("from_address", arg) :: bnds
       in
       `Assoc bnds
    : okta_email_sender -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_email_sender

[@@@deriving.end]

let okta_email_sender ?id ~from_address ~from_name ~subdomain () :
    okta_email_sender =
  { from_address; from_name; id; subdomain }

type t = {
  tf_name : string;
  dns_records : dns_records list prop;
  from_address : string prop;
  from_name : string prop;
  id : string prop;
  status : string prop;
  subdomain : string prop;
}

let make ?id ~from_address ~from_name ~subdomain __id =
  let __type = "okta_email_sender" in
  let __attrs =
    ({
       tf_name = __id;
       dns_records = Prop.computed __type __id "dns_records";
       from_address = Prop.computed __type __id "from_address";
       from_name = Prop.computed __type __id "from_name";
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
       subdomain = Prop.computed __type __id "subdomain";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_email_sender
        (okta_email_sender ?id ~from_address ~from_name ~subdomain ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~from_address ~from_name ~subdomain __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~from_address ~from_name ~subdomain __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
