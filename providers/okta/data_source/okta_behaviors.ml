(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type behaviors = {
  id : string prop;
  name : string prop;
  settings : (string * string prop) list;
  status : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : behaviors) -> ()

let yojson_of_behaviors =
  (function
   | {
       id = v_id;
       name = v_name;
       settings = v_settings;
       status = v_status;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_settings
         in
         ("settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : behaviors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_behaviors

[@@@deriving.end]

type okta_behaviors = {
  id : string prop option; [@option]
  q : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_behaviors) -> ()

let yojson_of_okta_behaviors =
  (function
   | { id = v_id; q = v_q } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_q with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "q", arg in
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
    : okta_behaviors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_behaviors

[@@@deriving.end]

let okta_behaviors ?id ?q () : okta_behaviors = { id; q }

type t = {
  tf_name : string;
  behaviors : behaviors list prop;
  id : string prop;
  q : string prop;
}

let make ?id ?q __id =
  let __type = "okta_behaviors" in
  let __attrs =
    ({
       tf_name = __id;
       behaviors = Prop.computed __type __id "behaviors";
       id = Prop.computed __type __id "id";
       q = Prop.computed __type __id "q";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_okta_behaviors (okta_behaviors ?id ?q ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?q __id =
  let (r : _ Tf_core.resource) = make ?id ?q __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
