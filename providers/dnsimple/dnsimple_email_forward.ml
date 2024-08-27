(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dnsimple_email_forward = {
  alias_name : string prop;
  destination_email : string prop;
  domain : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple_email_forward) -> ()

let yojson_of_dnsimple_email_forward =
  (function
   | {
       alias_name = v_alias_name;
       destination_email = v_destination_email;
       domain = v_domain;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_email
         in
         ("destination_email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alias_name in
         ("alias_name", arg) :: bnds
       in
       `Assoc bnds
    : dnsimple_email_forward -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple_email_forward

[@@@deriving.end]

let dnsimple_email_forward ~alias_name ~destination_email ~domain ()
    : dnsimple_email_forward =
  { alias_name; destination_email; domain }

type t = {
  tf_name : string;
  alias_email : string prop;
  alias_name : string prop;
  destination_email : string prop;
  domain : string prop;
  id : float prop;
}

let make ~alias_name ~destination_email ~domain __id =
  let __type = "dnsimple_email_forward" in
  let __attrs =
    ({
       tf_name = __id;
       alias_email = Prop.computed __type __id "alias_email";
       alias_name = Prop.computed __type __id "alias_name";
       destination_email =
         Prop.computed __type __id "destination_email";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_dnsimple_email_forward
        (dnsimple_email_forward ~alias_name ~destination_email
           ~domain ());
    attrs = __attrs;
  }

let register ?tf_module ~alias_name ~destination_email ~domain __id =
  let (r : _ Tf_core.resource) =
    make ~alias_name ~destination_email ~domain __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
