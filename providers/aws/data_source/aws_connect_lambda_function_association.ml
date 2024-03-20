(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_connect_lambda_function_association = {
  function_arn : string prop;
  id : string prop option; [@option]
  instance_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_lambda_function_association) -> ()

let yojson_of_aws_connect_lambda_function_association =
  (function
   | {
       function_arn = v_function_arn;
       id = v_id;
       instance_id = v_instance_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_function_arn in
         ("function_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_connect_lambda_function_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_lambda_function_association

[@@@deriving.end]

let aws_connect_lambda_function_association ?id ~function_arn
    ~instance_id () : aws_connect_lambda_function_association =
  { function_arn; id; instance_id }

type t = {
  function_arn : string prop;
  id : string prop;
  instance_id : string prop;
}

let make ?id ~function_arn ~instance_id __id =
  let __type = "aws_connect_lambda_function_association" in
  let __attrs =
    ({
       function_arn = Prop.computed __type __id "function_arn";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_lambda_function_association
        (aws_connect_lambda_function_association ?id ~function_arn
           ~instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~function_arn ~instance_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~function_arn ~instance_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
