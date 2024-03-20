(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_account_alias = {
  account_alias : string prop;  (** account_alias *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_iam_account_alias *)

let aws_iam_account_alias ?id ~account_alias () :
    aws_iam_account_alias =
  { account_alias; id }

type t = { account_alias : string prop; id : string prop }

let make ?id ~account_alias __id =
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
      yojson_of_aws_iam_account_alias
        (aws_iam_account_alias ?id ~account_alias ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_alias __id =
  let (r : _ Tf_core.resource) = make ?id ~account_alias __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
