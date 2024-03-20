(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_ipam_organization_admin_account = {
  delegated_admin_account_id : string prop;
      (** delegated_admin_account_id *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_organization_admin_account *)

let aws_vpc_ipam_organization_admin_account ?id
    ~delegated_admin_account_id () :
    aws_vpc_ipam_organization_admin_account =
  { delegated_admin_account_id; id }

type t = {
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
