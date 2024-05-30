(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_group_rule = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_group_rule) -> ()

let yojson_of_okta_group_rule =
  (function
   | { id = v_id; name = v_name; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
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
    : okta_group_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_group_rule

[@@@deriving.end]

let okta_group_rule ?id ?name ?status () : okta_group_rule =
  { id; name; status }

type t = {
  tf_name : string;
  expression_type : string prop;
  expression_value : string prop;
  group_assignments : string list prop;
  id : string prop;
  name : string prop;
  status : string prop;
  users_excluded : string list prop;
}

let make ?id ?name ?status __id =
  let __type = "okta_group_rule" in
  let __attrs =
    ({
       tf_name = __id;
       expression_type = Prop.computed __type __id "expression_type";
       expression_value =
         Prop.computed __type __id "expression_value";
       group_assignments =
         Prop.computed __type __id "group_assignments";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       users_excluded = Prop.computed __type __id "users_excluded";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_group_rule
        (okta_group_rule ?id ?name ?status ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?status __id =
  let (r : _ Tf_core.resource) = make ?id ?name ?status __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
