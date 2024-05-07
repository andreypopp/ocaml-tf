(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameter_value = unit [@@deriving_inline yojson_of]

let _ = fun (_ : parameter_value) -> ()

let yojson_of_parameter_value =
  (yojson_of_unit
    : parameter_value -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameter_value

[@@@deriving.end]

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
  attribute : parameter_object__attribute list;
  id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameter_object) -> ()

let yojson_of_parameter_object =
  (function
   | { attribute = v_attribute; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_parameter_object__attribute
             v_attribute
         in
         ("attribute", arg) :: bnds
       in
       `Assoc bnds
    : parameter_object -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameter_object

[@@@deriving.end]

type pipeline_object__field = {
  key : string prop;
  ref_value : string prop;
  string_value : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_string_value in
         ("string_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ref_value in
         ("ref_value", arg) :: bnds
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
  field : pipeline_object__field list;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pipeline_object) -> ()

let yojson_of_pipeline_object =
  (function
   | { field = v_field; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_pipeline_object__field v_field
         in
         ("field", arg) :: bnds
       in
       `Assoc bnds
    : pipeline_object -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pipeline_object

[@@@deriving.end]

type aws_datapipeline_pipeline_definition = {
  id : string prop option; [@option]
  pipeline_id : string prop;
  parameter_value : parameter_value list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datapipeline_pipeline_definition) -> ()

let yojson_of_aws_datapipeline_pipeline_definition =
  (function
   | {
       id = v_id;
       pipeline_id = v_pipeline_id;
       parameter_value = v_parameter_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_parameter_value v_parameter_value
         in
         ("parameter_value", arg) :: bnds
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

let parameter_value () = ()

let aws_datapipeline_pipeline_definition ?id ~pipeline_id
    ~parameter_value () : aws_datapipeline_pipeline_definition =
  { id; pipeline_id; parameter_value }

type t = {
  tf_name : string;
  id : string prop;
  parameter_object : parameter_object list prop;
  pipeline_id : string prop;
  pipeline_object : pipeline_object list prop;
}

let make ?id ~pipeline_id ~parameter_value __id =
  let __type = "aws_datapipeline_pipeline_definition" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       parameter_object =
         Prop.computed __type __id "parameter_object";
       pipeline_id = Prop.computed __type __id "pipeline_id";
       pipeline_object = Prop.computed __type __id "pipeline_object";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datapipeline_pipeline_definition
        (aws_datapipeline_pipeline_definition ?id ~pipeline_id
           ~parameter_value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~pipeline_id ~parameter_value __id =
  let (r : _ Tf_core.resource) =
    make ?id ~pipeline_id ~parameter_value __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
