(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type xss_match_tuple__field_to_match = {
  data : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : xss_match_tuple__field_to_match) -> ()

let yojson_of_xss_match_tuple__field_to_match =
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
    : xss_match_tuple__field_to_match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_xss_match_tuple__field_to_match

[@@@deriving.end]

type xss_match_tuple = {
  text_transformation : string prop;
  field_to_match : xss_match_tuple__field_to_match list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : xss_match_tuple) -> ()

let yojson_of_xss_match_tuple =
  (function
   | {
       text_transformation = v_text_transformation;
       field_to_match = v_field_to_match;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_field_to_match then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_xss_match_tuple__field_to_match)
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
       `Assoc bnds
    : xss_match_tuple -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_xss_match_tuple

[@@@deriving.end]

type aws_wafregional_xss_match_set = {
  id : string prop option; [@option]
  name : string prop;
  xss_match_tuple : xss_match_tuple list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_wafregional_xss_match_set) -> ()

let yojson_of_aws_wafregional_xss_match_set =
  (function
   | {
       id = v_id;
       name = v_name;
       xss_match_tuple = v_xss_match_tuple;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_xss_match_tuple then bnds
         else
           let arg =
             (yojson_of_list yojson_of_xss_match_tuple)
               v_xss_match_tuple
           in
           let bnd = "xss_match_tuple", arg in
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
    : aws_wafregional_xss_match_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_wafregional_xss_match_set

[@@@deriving.end]

let xss_match_tuple__field_to_match ?data ~type_ () :
    xss_match_tuple__field_to_match =
  { data; type_ }

let xss_match_tuple ~text_transformation ~field_to_match () :
    xss_match_tuple =
  { text_transformation; field_to_match }

let aws_wafregional_xss_match_set ?id ~name ~xss_match_tuple () :
    aws_wafregional_xss_match_set =
  { id; name; xss_match_tuple }

type t = { tf_name : string; id : string prop; name : string prop }

let make ?id ~name ~xss_match_tuple __id =
  let __type = "aws_wafregional_xss_match_set" in
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
      yojson_of_aws_wafregional_xss_match_set
        (aws_wafregional_xss_match_set ?id ~name ~xss_match_tuple ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~xss_match_tuple __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~xss_match_tuple __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
