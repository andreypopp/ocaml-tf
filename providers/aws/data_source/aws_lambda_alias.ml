(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lambda_alias = {
  function_name : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_alias) -> ()

let yojson_of_aws_lambda_alias =
  (function
   | { function_name = v_function_name; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lambda_alias -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_alias

[@@@deriving.end]

let aws_lambda_alias ?id ~function_name ~name () : aws_lambda_alias =
  { function_name; id; name }

type t = {
  arn : string prop;
  description : string prop;
  function_name : string prop;
  function_version : string prop;
  id : string prop;
  invoke_arn : string prop;
  name : string prop;
}

let make ?id ~function_name ~name __id =
  let __type = "aws_lambda_alias" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       function_name = Prop.computed __type __id "function_name";
       function_version =
         Prop.computed __type __id "function_version";
       id = Prop.computed __type __id "id";
       invoke_arn = Prop.computed __type __id "invoke_arn";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_alias
        (aws_lambda_alias ?id ~function_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~function_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~function_name ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
