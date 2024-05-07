(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_auditmanager_organization_admin_account_registration = {
  admin_account_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_auditmanager_organization_admin_account_registration) ->
  ()

let yojson_of_aws_auditmanager_organization_admin_account_registration
    =
  (function
   | { admin_account_id = v_admin_account_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_account_id
         in
         ("admin_account_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_auditmanager_organization_admin_account_registration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aws_auditmanager_organization_admin_account_registration

[@@@deriving.end]

let aws_auditmanager_organization_admin_account_registration
    ~admin_account_id () :
    aws_auditmanager_organization_admin_account_registration =
  { admin_account_id }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
