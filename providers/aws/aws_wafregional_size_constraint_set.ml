(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type size_constraints__field_to_match = {
  data : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : size_constraints__field_to_match) -> ()

let yojson_of_size_constraints__field_to_match =
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
    : size_constraints__field_to_match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_size_constraints__field_to_match

[@@@deriving.end]

type size_constraints = {
  comparison_operator : string prop;
  size : float prop;
  text_transformation : string prop;
  field_to_match : size_constraints__field_to_match list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : size_constraints) -> ()

let yojson_of_size_constraints =
  (function
   | {
       comparison_operator = v_comparison_operator;
       size = v_size;
       text_transformation = v_text_transformation;
       field_to_match = v_field_to_match;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_field_to_match then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_size_constraints__field_to_match)
               v_field_to_match
           in
           let bnd = "field_to_match", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_text_transformation
         in
         ("text_transformation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_comparison_operator
         in
         ("comparison_operator", arg) :: bnds
       in
       `Assoc bnds
    : size_constraints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_size_constraints

[@@@deriving.end]

type aws_wafregional_size_constraint_set = {
  id : string prop option; [@option]
  name : string prop;
  size_constraints : size_constraints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_wafregional_size_constraint_set) -> ()

let yojson_of_aws_wafregional_size_constraint_set =
  (function
   | {
       id = v_id;
       name = v_name;
       size_constraints = v_size_constraints;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_size_constraints then bnds
         else
           let arg =
             (yojson_of_list yojson_of_size_constraints)
               v_size_constraints
           in
           let bnd = "size_constraints", arg in
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
    : aws_wafregional_size_constraint_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_wafregional_size_constraint_set

[@@@deriving.end]

let size_constraints__field_to_match ?data ~type_ () :
    size_constraints__field_to_match =
  { data; type_ }

let size_constraints ~comparison_operator ~size ~text_transformation
    ~field_to_match () : size_constraints =
  { comparison_operator; size; text_transformation; field_to_match }

let aws_wafregional_size_constraint_set ?id ~name ~size_constraints
    () : aws_wafregional_size_constraint_set =
  { id; name; size_constraints }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~name ~size_constraints __id =
  let __type = "aws_wafregional_size_constraint_set" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_wafregional_size_constraint_set
        (aws_wafregional_size_constraint_set ?id ~name
           ~size_constraints ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~size_constraints __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~size_constraints __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
