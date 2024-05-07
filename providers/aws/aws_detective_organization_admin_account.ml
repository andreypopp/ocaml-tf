(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_detective_organization_admin_account = {
  account_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_detective_organization_admin_account) -> ()

let yojson_of_aws_detective_organization_admin_account =
  (function
   | { account_id = v_account_id; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_detective_organization_admin_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_detective_organization_admin_account

[@@@deriving.end]

let aws_detective_organization_admin_account ?id ~account_id () :
    aws_detective_organization_admin_account =
  { account_id; id }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
}

let make ?id ~account_id __id =
  let __type = "aws_detective_organization_admin_account" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_detective_organization_admin_account
        (aws_detective_organization_admin_account ?id ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id __id =
  let (r : _ Tf_core.resource) = make ?id ~account_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
