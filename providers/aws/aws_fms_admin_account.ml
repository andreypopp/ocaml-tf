(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_fms_admin_account = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fms_admin_account *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_fms_admin_account ?account_id ?id ?timeouts () :
    aws_fms_admin_account =
  { account_id; id; timeouts }

type t = { account_id : string prop; id : string prop }

let make ?account_id ?id ?timeouts __id =
  let __type = "aws_fms_admin_account" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fms_admin_account
        (aws_fms_admin_account ?account_id ?id ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
