(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metric_transformation = {
  default_value : string prop option; [@option]
  dimensions : (string * string prop) list option; [@option]
  name : string prop;
  namespace : string prop;
  unit : string prop option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metric_transformation) -> ()

let yojson_of_metric_transformation =
  (function
   | {
       default_value = v_default_value;
       dimensions = v_dimensions;
       name = v_name;
       namespace = v_namespace;
       unit = v_unit;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_dimensions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "dimensions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metric_transformation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metric_transformation

[@@@deriving.end]

type aws_cloudwatch_log_metric_filter = {
  id : string prop option; [@option]
  log_group_name : string prop;
  name : string prop;
  pattern : string prop;
  metric_transformation : metric_transformation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_log_metric_filter) -> ()

let yojson_of_aws_cloudwatch_log_metric_filter =
  (function
   | {
       id = v_id;
       log_group_name = v_log_group_name;
       name = v_name;
       pattern = v_pattern;
       metric_transformation = v_metric_transformation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_metric_transformation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metric_transformation)
               v_metric_transformation
           in
           let bnd = "metric_transformation", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_group_name
         in
         ("log_group_name", arg) :: bnds
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
    : aws_cloudwatch_log_metric_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_log_metric_filter

[@@@deriving.end]

let metric_transformation ?default_value ?dimensions ?unit ~name
    ~namespace ~value () : metric_transformation =
  { default_value; dimensions; name; namespace; unit; value }

let aws_cloudwatch_log_metric_filter ?id ~log_group_name ~name
    ~pattern ~metric_transformation () :
    aws_cloudwatch_log_metric_filter =
  { id; log_group_name; name; pattern; metric_transformation }

type t = {
  tf_name : string;
  id : string prop;
  log_group_name : string prop;
  name : string prop;
  pattern : string prop;
}

let make ?id ~log_group_name ~name ~pattern ~metric_transformation
    __id =
  let __type = "aws_cloudwatch_log_metric_filter" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       log_group_name = Prop.computed __type __id "log_group_name";
       name = Prop.computed __type __id "name";
       pattern = Prop.computed __type __id "pattern";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_metric_filter
        (aws_cloudwatch_log_metric_filter ?id ~log_group_name ~name
           ~pattern ~metric_transformation ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~log_group_name ~name ~pattern
    ~metric_transformation __id =
  let (r : _ Tf_core.resource) =
    make ?id ~log_group_name ~name ~pattern ~metric_transformation
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
