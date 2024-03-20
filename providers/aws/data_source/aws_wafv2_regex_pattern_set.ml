(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type regular_expression = { regex_string : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : regular_expression) -> ()

let yojson_of_regular_expression =
  (function
   | { regex_string = v_regex_string } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_regex_string in
         ("regex_string", arg) :: bnds
       in
       `Assoc bnds
    : regular_expression -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_regular_expression

[@@@deriving.end]

type aws_wafv2_regex_pattern_set = {
  id : string prop option; [@option]
  name : string prop;
  scope : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_wafv2_regex_pattern_set) -> ()

let yojson_of_aws_wafv2_regex_pattern_set =
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
    : aws_wafv2_regex_pattern_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_wafv2_regex_pattern_set

[@@@deriving.end]

let aws_wafv2_regex_pattern_set ?id ~name ~scope () :
    aws_wafv2_regex_pattern_set =
  { id; name; scope }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  regular_expression : regular_expression list prop;
  scope : string prop;
}

let make ?id ~name ~scope __id =
  let __type = "aws_wafv2_regex_pattern_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       regular_expression =
         Prop.computed __type __id "regular_expression";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_wafv2_regex_pattern_set
        (aws_wafv2_regex_pattern_set ?id ~name ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~scope __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~scope __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
