(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_wafregional_regex_pattern_set = {
  id : string prop option; [@option]
  name : string prop;
  regex_pattern_strings : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_wafregional_regex_pattern_set) -> ()

let yojson_of_aws_wafregional_regex_pattern_set =
  (function
   | {
       id = v_id;
       name = v_name;
       regex_pattern_strings = v_regex_pattern_strings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_regex_pattern_strings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regex_pattern_strings", arg in
             bnd :: bnds
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
    : aws_wafregional_regex_pattern_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_wafregional_regex_pattern_set

[@@@deriving.end]

let aws_wafregional_regex_pattern_set ?id ?regex_pattern_strings
    ~name () : aws_wafregional_regex_pattern_set =
  { id; name; regex_pattern_strings }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  regex_pattern_strings : string list prop;
}

let make ?id ?regex_pattern_strings ~name __id =
  let __type = "aws_wafregional_regex_pattern_set" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       regex_pattern_strings =
         Prop.computed __type __id "regex_pattern_strings";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_wafregional_regex_pattern_set
        (aws_wafregional_regex_pattern_set ?id ?regex_pattern_strings
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?regex_pattern_strings ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?regex_pattern_strings ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
