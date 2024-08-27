(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dnsimple_zone = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple_zone) -> ()

let yojson_of_dnsimple_zone =
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
    : dnsimple_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple_zone

[@@@deriving.end]

let dnsimple_zone ~name () : dnsimple_zone = { name }

type t = {
  tf_name : string;
  account_id : float prop;
  id : float prop;
  name : string prop;
  reverse : bool prop;
}

let make ~name __id =
  let __type = "dnsimple_zone" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       reverse = Prop.computed __type __id "reverse";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_dnsimple_zone (dnsimple_zone ~name ());
    attrs = __attrs;
  }

let register ?tf_module ~name __id =
  let (r : _ Tf_core.resource) = make ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
