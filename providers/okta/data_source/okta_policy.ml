(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_policy = {
  id : string prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy) -> ()

let yojson_of_okta_policy =
  (function
   | { id = v_id; name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy

[@@@deriving.end]

let okta_policy ?id ~name ~type_ () : okta_policy =
  { id; name; type_ }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  status : string prop;
  type_ : string prop;
}

let make ?id ~name ~type_ __id =
  let __type = "okta_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_okta_policy (okta_policy ?id ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~type_ __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~type_ __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
