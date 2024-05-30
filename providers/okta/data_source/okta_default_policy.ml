(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_default_policy = {
  id : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_default_policy) -> ()

let yojson_of_okta_default_policy =
  (function
   | { id = v_id; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : okta_default_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_default_policy

[@@@deriving.end]

let okta_default_policy ?id ~type_ () : okta_default_policy =
  { id; type_ }

type t = { tf_name : string; id : string prop; type_ : string prop }

let make ?id ~type_ __id =
  let __type = "okta_default_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_default_policy
        (okta_default_policy ?id ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~type_ __id =
  let (r : _ Tf_core.resource) = make ?id ~type_ __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
