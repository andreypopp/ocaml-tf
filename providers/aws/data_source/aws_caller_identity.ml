(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_caller_identity = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_caller_identity) -> ()

let yojson_of_aws_caller_identity =
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
    : aws_caller_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_caller_identity

[@@@deriving.end]

let aws_caller_identity ?id () : aws_caller_identity = { id }

type t = {
  account_id : string prop;
  arn : string prop;
  id : string prop;
  user_id : string prop;
}

let make ?id __id =
  let __type = "aws_caller_identity" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_caller_identity (aws_caller_identity ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
