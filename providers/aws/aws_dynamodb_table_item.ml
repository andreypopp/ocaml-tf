(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dynamodb_table_item = {
  hash_key : string prop;  (** hash_key *)
  id : string prop option; [@option]  (** id *)
  item : string prop;  (** item *)
  range_key : string prop option; [@option]  (** range_key *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table_item *)

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
