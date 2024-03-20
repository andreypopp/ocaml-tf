(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dynamodb_table_item = {
  expression_attribute_names : (string * string prop) list option;
      [@option]
  id : string prop option; [@option]
  key : string prop;
  projection_expression : string prop option; [@option]
  table_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dynamodb_table_item) -> ()

let yojson_of_aws_dynamodb_table_item =
  (function
   | {
       expression_attribute_names = v_expression_attribute_names;
       id = v_id;
       key = v_key;
       projection_expression = v_projection_expression;
       table_name = v_table_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         match v_projection_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "projection_expression", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expression_attribute_names with
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
             let bnd = "expression_attribute_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dynamodb_table_item -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dynamodb_table_item

[@@@deriving.end]

let aws_dynamodb_table_item ?expression_attribute_names ?id
    ?projection_expression ~key ~table_name () :
    aws_dynamodb_table_item =
  {
    expression_attribute_names;
    id;
    key;
    projection_expression;
    table_name;
  }

type t = {
  expression_attribute_names : (string * string) list prop;
  id : string prop;
  item : string prop;
  key : string prop;
  projection_expression : string prop;
  table_name : string prop;
}

let make ?expression_attribute_names ?id ?projection_expression ~key
    ~table_name __id =
  let __type = "aws_dynamodb_table_item" in
  let __attrs =
    ({
       expression_attribute_names =
         Prop.computed __type __id "expression_attribute_names";
       id = Prop.computed __type __id "id";
       item = Prop.computed __type __id "item";
       key = Prop.computed __type __id "key";
       projection_expression =
         Prop.computed __type __id "projection_expression";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_table_item
        (aws_dynamodb_table_item ?expression_attribute_names ?id
           ?projection_expression ~key ~table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?expression_attribute_names ?id
    ?projection_expression ~key ~table_name __id =
  let (r : _ Tf_core.resource) =
    make ?expression_attribute_names ?id ?projection_expression ~key
      ~table_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
