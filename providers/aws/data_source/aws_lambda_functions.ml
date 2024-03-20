(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lambda_functions = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_functions) -> ()

let yojson_of_aws_lambda_functions =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : aws_lambda_functions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_functions

[@@@deriving.end]

let aws_lambda_functions ?id () : aws_lambda_functions = { id }

type t = {
  function_arns : string list prop;
  function_names : string list prop;
  id : string prop;
}

let make ?id __id =
  let __type = "aws_lambda_functions" in
  let __attrs =
    ({
       function_arns = Prop.computed __type __id "function_arns";
       function_names = Prop.computed __type __id "function_names";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_functions (aws_lambda_functions ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
