(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filters = { field : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : filters) -> ()

let yojson_of_filters =
  (function
   | { field = v_field; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_field in
         ("field", arg) :: bnds
       in
       `Assoc bnds
    : filters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters

[@@@deriving.end]

type aws_pricing_product = {
  id : string prop option; [@option]
  service_code : string prop;
  filters : filters list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_pricing_product) -> ()

let yojson_of_aws_pricing_product =
  (function
   | {
       id = v_id;
       service_code = v_service_code;
       filters = v_filters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_filters then bnds
         else
           let arg = (yojson_of_list yojson_of_filters) v_filters in
           let bnd = "filters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_code in
         ("service_code", arg) :: bnds
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
    : aws_pricing_product -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_pricing_product

[@@@deriving.end]

let filters ~field ~value () : filters = { field; value }

let aws_pricing_product ?id ~service_code ~filters () :
    aws_pricing_product =
  { id; service_code; filters }

type t = {
  tf_name : string;
  id : string prop;
  result : string prop;
  service_code : string prop;
}

let make ?id ~service_code ~filters __id =
  let __type = "aws_pricing_product" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       result = Prop.computed __type __id "result";
       service_code = Prop.computed __type __id "service_code";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pricing_product
        (aws_pricing_product ?id ~service_code ~filters ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~service_code ~filters __id =
  let (r : _ Tf_core.resource) =
    make ?id ~service_code ~filters __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
