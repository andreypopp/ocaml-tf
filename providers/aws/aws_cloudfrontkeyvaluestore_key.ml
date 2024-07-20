(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfrontkeyvaluestore_key = {
  key : string prop;
  key_value_store_arn : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfrontkeyvaluestore_key) -> ()

let yojson_of_aws_cloudfrontkeyvaluestore_key =
  (function
   | {
       key = v_key;
       key_value_store_arn = v_key_value_store_arn;
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
         let arg =
           yojson_of_prop yojson_of_string v_key_value_store_arn
         in
         ("key_value_store_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudfrontkeyvaluestore_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfrontkeyvaluestore_key

[@@@deriving.end]

let aws_cloudfrontkeyvaluestore_key ~key ~key_value_store_arn ~value
    () : aws_cloudfrontkeyvaluestore_key =
  { key; key_value_store_arn; value }

type t = {
  tf_name : string;
  id : string prop;
  key : string prop;
  key_value_store_arn : string prop;
  total_size_in_bytes : float prop;
  value : string prop;
}

let make ~key ~key_value_store_arn ~value __id =
  let __type = "aws_cloudfrontkeyvaluestore_key" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       key_value_store_arn =
         Prop.computed __type __id "key_value_store_arn";
       total_size_in_bytes =
         Prop.computed __type __id "total_size_in_bytes";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfrontkeyvaluestore_key
        (aws_cloudfrontkeyvaluestore_key ~key ~key_value_store_arn
           ~value ());
    attrs = __attrs;
  }

let register ?tf_module ~key ~key_value_store_arn ~value __id =
  let (r : _ Tf_core.resource) =
    make ~key ~key_value_store_arn ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
