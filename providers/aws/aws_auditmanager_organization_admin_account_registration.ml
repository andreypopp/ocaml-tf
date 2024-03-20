(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_auditmanager_organization_admin_account_registration = {
  admin_account_id : string prop;  (** admin_account_id *)
}
[@@deriving yojson_of]
(** aws_auditmanager_organization_admin_account_registration *)

let aws_auditmanager_organization_admin_account_registration
    ~admin_account_id () :
    aws_auditmanager_organization_admin_account_registration =
  { admin_account_id }

type t = {
  admin_account_id : string prop;
  id : string prop;
  organization_id : string prop;
}

let make ~admin_account_id __id =
  let __type =
    "aws_auditmanager_organization_admin_account_registration"
  in
  let __attrs =
    ({
       admin_account_id =
         Prop.computed __type __id "admin_account_id";
       id = Prop.computed __type __id "id";
       organization_id = Prop.computed __type __id "organization_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_organization_admin_account_registration
        (aws_auditmanager_organization_admin_account_registration
           ~admin_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ~admin_account_id __id =
  let (r : _ Tf_core.resource) = make ~admin_account_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
