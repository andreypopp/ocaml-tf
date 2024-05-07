(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type byte_match_tuples__field_to_match = {
  data : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : byte_match_tuples__field_to_match) -> ()

let yojson_of_byte_match_tuples__field_to_match =
  (function
   | { data = v_data; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : byte_match_tuples__field_to_match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_byte_match_tuples__field_to_match

[@@@deriving.end]

type byte_match_tuples = {
  positional_constraint : string prop;
  target_string : string prop option; [@option]
  text_transformation : string prop;
  field_to_match : byte_match_tuples__field_to_match list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : byte_match_tuples) -> ()

let yojson_of_byte_match_tuples =
  (function
   | {
       positional_constraint = v_positional_constraint;
       target_string = v_target_string;
       text_transformation = v_text_transformation;
       field_to_match = v_field_to_match;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_byte_match_tuples__field_to_match
             v_field_to_match
         in
         ("field_to_match", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_text_transformation
         in
         ("text_transformation", arg) :: bnds
       in
       let bnds =
         match v_target_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_string", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_positional_constraint
         in
         ("positional_constraint", arg) :: bnds
       in
       `Assoc bnds
    : byte_match_tuples -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_byte_match_tuples

[@@@deriving.end]

type aws_waf_byte_match_set = {
  id : string prop option; [@option]
  name : string prop;
  byte_match_tuples : byte_match_tuples list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_waf_byte_match_set) -> ()

let yojson_of_aws_waf_byte_match_set =
  (function
   | {
       id = v_id;
       name = v_name;
       byte_match_tuples = v_byte_match_tuples;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_byte_match_tuples
             v_byte_match_tuples
         in
         ("byte_match_tuples", arg) :: bnds
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
    : aws_waf_byte_match_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_waf_byte_match_set

[@@@deriving.end]

let byte_match_tuples__field_to_match ?data ~type_ () :
    byte_match_tuples__field_to_match =
  { data; type_ }

let byte_match_tuples ?target_string ~positional_constraint
    ~text_transformation ~field_to_match () : byte_match_tuples =
  {
    positional_constraint;
    target_string;
    text_transformation;
    field_to_match;
  }

let aws_waf_byte_match_set ?id ~name ~byte_match_tuples () :
    aws_waf_byte_match_set =
  { id; name; byte_match_tuples }

type t = { tf_name : string; id : string prop; name : string prop }

let make ?id ~name ~byte_match_tuples __id =
  let __type = "aws_waf_byte_match_set" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_waf_byte_match_set
        (aws_waf_byte_match_set ?id ~name ~byte_match_tuples ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~byte_match_tuples __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~byte_match_tuples __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
