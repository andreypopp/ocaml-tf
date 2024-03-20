(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_macie2_organization_admin_account = {
  admin_account_id : string prop;  (** admin_account_id *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_macie2_organization_admin_account *)

let aws_macie2_organization_admin_account ?id ~admin_account_id () :
    aws_macie2_organization_admin_account =
  { admin_account_id; id }

type t = { admin_account_id : string prop; id : string prop }

let make ?id ~admin_account_id __id =
  let __type = "aws_macie2_organization_admin_account" in
  let __attrs =
    ({
       admin_account_id =
         Prop.computed __type __id "admin_account_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_macie2_organization_admin_account
        (aws_macie2_organization_admin_account ?id ~admin_account_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~admin_account_id __id =
  let (r : _ Tf_core.resource) = make ?id ~admin_account_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
