(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_auditmanager_account_registration = {
  delegated_admin_account : string prop option; [@option]
      (** delegated_admin_account *)
  deregister_on_destroy : bool prop option; [@option]
      (** deregister_on_destroy *)
  kms_key : string prop option; [@option]  (** kms_key *)
}
[@@deriving yojson_of]
(** aws_auditmanager_account_registration *)

let aws_auditmanager_account_registration ?delegated_admin_account
    ?deregister_on_destroy ?kms_key () :
    aws_auditmanager_account_registration =
  { delegated_admin_account; deregister_on_destroy; kms_key }

type t = {
  delegated_admin_account : string prop;
  deregister_on_destroy : bool prop;
  id : string prop;
  kms_key : string prop;
  status : string prop;
}

let make ?delegated_admin_account ?deregister_on_destroy ?kms_key
    __id =
  let __type = "aws_auditmanager_account_registration" in
  let __attrs =
    ({
       delegated_admin_account =
         Prop.computed __type __id "delegated_admin_account";
       deregister_on_destroy =
         Prop.computed __type __id "deregister_on_destroy";
       id = Prop.computed __type __id "id";
       kms_key = Prop.computed __type __id "kms_key";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_account_registration
        (aws_auditmanager_account_registration
           ?delegated_admin_account ?deregister_on_destroy ?kms_key
           ());
    attrs = __attrs;
  }

let register ?tf_module ?delegated_admin_account
    ?deregister_on_destroy ?kms_key __id =
  let (r : _ Tf_core.resource) =
    make ?delegated_admin_account ?deregister_on_destroy ?kms_key
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
