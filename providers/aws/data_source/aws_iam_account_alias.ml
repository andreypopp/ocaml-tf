(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_account_alias = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_account_alias) -> ()

let yojson_of_aws_iam_account_alias =
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
    : aws_iam_account_alias -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_account_alias

[@@@deriving.end]

let aws_iam_account_alias ?id () : aws_iam_account_alias = { id }

type t = { account_alias : string prop; id : string prop }

let make ?id __id =
  let __type = "aws_iam_account_alias" in
  let __attrs =
    ({
       account_alias = Prop.computed __type __id "account_alias";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_account_alias (aws_iam_account_alias ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
