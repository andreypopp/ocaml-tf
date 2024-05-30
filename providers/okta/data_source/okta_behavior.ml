(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_behavior = {
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_behavior) -> ()

let yojson_of_okta_behavior =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
    : okta_behavior -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_behavior

[@@@deriving.end]

let okta_behavior ?id ?name () : okta_behavior = { id; name }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  settings : (string * string) list prop;
  status : string prop;
  type_ : string prop;
}

let make ?id ?name __id =
  let __type = "okta_behavior" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       settings = Prop.computed __type __id "settings";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_okta_behavior (okta_behavior ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
