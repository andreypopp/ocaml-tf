(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_wafv2_rule_group = {
  id : string prop option; [@option]
  name : string prop;
  scope : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_wafv2_rule_group) -> ()

let yojson_of_aws_wafv2_rule_group =
  (function
   | { id = v_id; name = v_name; scope = v_scope } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
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
    : aws_wafv2_rule_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_wafv2_rule_group

[@@@deriving.end]

let aws_wafv2_rule_group ?id ~name ~scope () : aws_wafv2_rule_group =
  { id; name; scope }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  scope : string prop;
}

let make ?id ~name ~scope __id =
  let __type = "aws_wafv2_rule_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_wafv2_rule_group
        (aws_wafv2_rule_group ?id ~name ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~scope __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~scope __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
