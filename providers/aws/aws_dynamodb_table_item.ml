(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dynamodb_table_item = {
  hash_key : string prop;
  id : string prop option; [@option]
  item : string prop;
  range_key : string prop option; [@option]
  table_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dynamodb_table_item) -> ()

let yojson_of_aws_dynamodb_table_item =
  (function
   | {
       hash_key = v_hash_key;
       id = v_id;
       item = v_item;
       range_key = v_range_key;
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
         match v_range_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_item in
         ("item", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_hash_key in
         ("hash_key", arg) :: bnds
       in
       `Assoc bnds
    : aws_dynamodb_table_item -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dynamodb_table_item

[@@@deriving.end]

let aws_dynamodb_table_item ?id ?range_key ~hash_key ~item
    ~table_name () : aws_dynamodb_table_item =
  { hash_key; id; item; range_key; table_name }

type t = {
  hash_key : string prop;
  id : string prop;
  item : string prop;
  range_key : string prop;
  table_name : string prop;
}

let make ?id ?range_key ~hash_key ~item ~table_name __id =
  let __type = "aws_dynamodb_table_item" in
  let __attrs =
    ({
       hash_key = Prop.computed __type __id "hash_key";
       id = Prop.computed __type __id "id";
       item = Prop.computed __type __id "item";
       range_key = Prop.computed __type __id "range_key";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_table_item
        (aws_dynamodb_table_item ?id ?range_key ~hash_key ~item
           ~table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?range_key ~hash_key ~item ~table_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?range_key ~hash_key ~item ~table_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
