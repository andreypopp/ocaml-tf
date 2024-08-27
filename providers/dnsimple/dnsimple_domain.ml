(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dnsimple_domain = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple_domain) -> ()

let yojson_of_dnsimple_domain =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : dnsimple_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple_domain

[@@@deriving.end]

let dnsimple_domain ~name () : dnsimple_domain = { name }

type t = {
  tf_name : string;
  account_id : float prop;
  auto_renew : bool prop;
  id : float prop;
  name : string prop;
  private_whois : bool prop;
  registrant_id : float prop;
  state : string prop;
  unicode_name : string prop;
}

let make ~name __id =
  let __type = "dnsimple_domain" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       auto_renew = Prop.computed __type __id "auto_renew";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       private_whois = Prop.computed __type __id "private_whois";
       registrant_id = Prop.computed __type __id "registrant_id";
       state = Prop.computed __type __id "state";
       unicode_name = Prop.computed __type __id "unicode_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_dnsimple_domain (dnsimple_domain ~name ());
    attrs = __attrs;
  }

let register ?tf_module ~name __id =
  let (r : _ Tf_core.resource) = make ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
