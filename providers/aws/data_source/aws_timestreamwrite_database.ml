(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_timestreamwrite_database = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_timestreamwrite_database) -> ()

let yojson_of_aws_timestreamwrite_database =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : aws_timestreamwrite_database ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_timestreamwrite_database

[@@@deriving.end]

let aws_timestreamwrite_database ~name () :
    aws_timestreamwrite_database =
  { name }

type t = {
  tf_name : string;
  arn : string prop;
  created_time : string prop;
  kms_key_id : string prop;
  last_updated_time : string prop;
  name : string prop;
  table_count : float prop;
}

let make ~name __id =
  let __type = "aws_timestreamwrite_database" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_time = Prop.computed __type __id "created_time";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       name = Prop.computed __type __id "name";
       table_count = Prop.computed __type __id "table_count";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_timestreamwrite_database
        (aws_timestreamwrite_database ~name ());
    attrs = __attrs;
  }

let register ?tf_module ~name __id =
  let (r : _ Tf_core.resource) = make ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
