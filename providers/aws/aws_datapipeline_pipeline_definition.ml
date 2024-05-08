(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameter_object__attribute = {
  key : string prop;
  string_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameter_object__attribute) -> ()

let yojson_of_parameter_object__attribute =
  (function
   | { key = v_key; string_value = v_string_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_string_value in
         ("string_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : parameter_object__attribute ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameter_object__attribute

[@@@deriving.end]

type parameter_object = {
  id : string prop;
  attribute : parameter_object__attribute list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameter_object) -> ()

let yojson_of_parameter_object =
  (function
   | { id = v_id; attribute = v_attribute } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_attribute then bnds
         else
           let arg =
             (yojson_of_list yojson_of_parameter_object__attribute)
               v_attribute
           in
           let bnd = "attribute", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : parameter_object -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameter_object

[@@@deriving.end]

type parameter_value = {
  id : string prop;
  string_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameter_value) -> ()

let yojson_of_parameter_value =
  (function
   | { id = v_id; string_value = v_string_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_string_value in
         ("string_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : parameter_value -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameter_value

[@@@deriving.end]

type pipeline_object__field = {
  key : string prop;
  ref_value : string prop option; [@option]
  string_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pipeline_object__field) -> ()

let yojson_of_pipeline_object__field =
  (function
   | {
       key = v_key;
       ref_value = v_ref_value;
       string_value = v_string_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ref_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ref_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : pipeline_object__field -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pipeline_object__field

[@@@deriving.end]

type pipeline_object = {
  id : string prop;
  name : string prop;
  field : pipeline_object__field list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pipeline_object) -> ()

let yojson_of_pipeline_object =
  (function
   | { id = v_id; name = v_name; field = v_field } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_field then bnds
         else
           let arg =
             (yojson_of_list yojson_of_pipeline_object__field)
               v_field
           in
           let bnd = "field", arg in
           bnd :: bnds
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
    : pipeline_object -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pipeline_object

[@@@deriving.end]

type aws_datapipeline_pipeline_definition = {
  id : string prop option; [@option]
  pipeline_id : string prop;
  parameter_object : parameter_object list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  parameter_value : parameter_value list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pipeline_object : pipeline_object list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datapipeline_pipeline_definition) -> ()

let yojson_of_aws_datapipeline_pipeline_definition =
  (function
   | {
       id = v_id;
       pipeline_id = v_pipeline_id;
       parameter_object = v_parameter_object;
       parameter_value = v_parameter_value;
       pipeline_object = v_pipeline_object;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pipeline_object then bnds
         else
           let arg =
             (yojson_of_list yojson_of_pipeline_object)
               v_pipeline_object
           in
           let bnd = "pipeline_object", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_parameter_value then bnds
         else
           let arg =
             (yojson_of_list yojson_of_parameter_value)
               v_parameter_value
           in
           let bnd = "parameter_value", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_parameter_object then bnds
         else
           let arg =
             (yojson_of_list yojson_of_parameter_object)
               v_parameter_object
           in
           let bnd = "parameter_object", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pipeline_id in
         ("pipeline_id", arg) :: bnds
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
    : aws_datapipeline_pipeline_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datapipeline_pipeline_definition

[@@@deriving.end]

let parameter_object__attribute ~key ~string_value () :
    parameter_object__attribute =
  { key; string_value }

let parameter_object ~id ~attribute () : parameter_object =
  { id; attribute }

let parameter_value ~id ~string_value () : parameter_value =
  { id; string_value }

let pipeline_object__field ?ref_value ?string_value ~key () :
    pipeline_object__field =
  { key; ref_value; string_value }

let pipeline_object ~id ~name ~field () : pipeline_object =
  { id; name; field }

let aws_datapipeline_pipeline_definition ?id ~pipeline_id
    ~parameter_object ~parameter_value ~pipeline_object () :
    aws_datapipeline_pipeline_definition =
  {
    id;
    pipeline_id;
    parameter_object;
    parameter_value;
    pipeline_object;
  }

type t = {
  tf_name : string;
  id : string prop;
  pipeline_id : string prop;
}

let make ?id ~pipeline_id ~parameter_object ~parameter_value
    ~pipeline_object __id =
  let __type = "aws_datapipeline_pipeline_definition" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       pipeline_id = Prop.computed __type __id "pipeline_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datapipeline_pipeline_definition
        (aws_datapipeline_pipeline_definition ?id ~pipeline_id
           ~parameter_object ~parameter_value ~pipeline_object ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~pipeline_id ~parameter_object
    ~parameter_value ~pipeline_object __id =
  let (r : _ Tf_core.resource) =
    make ?id ~pipeline_id ~parameter_object ~parameter_value
      ~pipeline_object __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
