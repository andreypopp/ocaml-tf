(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_account_alias = {
  account_alias : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_account_alias) -> ()

let yojson_of_aws_iam_account_alias =
  (function
   | { account_alias = v_account_alias; id = v_id } ->
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_alias in
         ("account_alias", arg) :: bnds
       in
       `Assoc bnds
    : aws_iam_account_alias -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_account_alias

[@@@deriving.end]

let aws_iam_account_alias ?id ~account_alias () :
    aws_iam_account_alias =
  { account_alias; id }

type t = {
  tf_name : string;
  account_alias : string prop;
  id : string prop;
}

let make ?id ~account_alias __id =
  let __type = "aws_iam_account_alias" in
  let __attrs =
    ({
       tf_name = __id;
       account_alias = Prop.computed __type __id "account_alias";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_account_alias
        (aws_iam_account_alias ?id ~account_alias ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_alias __id =
  let (r : _ Tf_core.resource) = make ?id ~account_alias __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
