(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_ipam_organization_admin_account = {
  delegated_admin_account_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_ipam_organization_admin_account) -> ()

let yojson_of_aws_vpc_ipam_organization_admin_account =
  (function
   | {
       delegated_admin_account_id = v_delegated_admin_account_id;
       id = v_id;
     } ->
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
         let arg =
           yojson_of_prop yojson_of_string
             v_delegated_admin_account_id
         in
         ("delegated_admin_account_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_vpc_ipam_organization_admin_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_ipam_organization_admin_account

[@@@deriving.end]

let aws_vpc_ipam_organization_admin_account ?id
    ~delegated_admin_account_id () :
    aws_vpc_ipam_organization_admin_account =
  { delegated_admin_account_id; id }

type t = {
  tf_name : string;
  arn : string prop;
  delegated_admin_account_id : string prop;
  email : string prop;
  id : string prop;
  name : string prop;
  service_principal : string prop;
}

let make ?id ~delegated_admin_account_id __id =
  let __type = "aws_vpc_ipam_organization_admin_account" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       delegated_admin_account_id =
         Prop.computed __type __id "delegated_admin_account_id";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       service_principal =
         Prop.computed __type __id "service_principal";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam_organization_admin_account
        (aws_vpc_ipam_organization_admin_account ?id
           ~delegated_admin_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~delegated_admin_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~delegated_admin_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
