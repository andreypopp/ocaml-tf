(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dnsimple_zone = {
  active : bool prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple_zone) -> ()

let yojson_of_dnsimple_zone =
  (function
   | { active = v_active; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_active with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dnsimple_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple_zone

[@@@deriving.end]

let dnsimple_zone ?active ~name () : dnsimple_zone = { active; name }

type t = {
  tf_name : string;
  account_id : float prop;
  active : bool prop;
  id : float prop;
  last_transferred_at : string prop;
  name : string prop;
  reverse : bool prop;
  secondary : bool prop;
}

let make ?active ~name __id =
  let __type = "dnsimple_zone" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       active = Prop.computed __type __id "active";
       id = Prop.computed __type __id "id";
       last_transferred_at =
         Prop.computed __type __id "last_transferred_at";
       name = Prop.computed __type __id "name";
       reverse = Prop.computed __type __id "reverse";
       secondary = Prop.computed __type __id "secondary";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_dnsimple_zone (dnsimple_zone ?active ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?active ~name __id =
  let (r : _ Tf_core.resource) = make ?active ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
