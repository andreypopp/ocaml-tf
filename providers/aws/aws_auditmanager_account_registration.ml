(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_auditmanager_account_registration = {
  delegated_admin_account : string prop option; [@option]
  deregister_on_destroy : bool prop option; [@option]
  kms_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_auditmanager_account_registration) -> ()

let yojson_of_aws_auditmanager_account_registration =
  (function
   | {
       delegated_admin_account = v_delegated_admin_account;
       deregister_on_destroy = v_deregister_on_destroy;
       kms_key = v_kms_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deregister_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deregister_on_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delegated_admin_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delegated_admin_account", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_auditmanager_account_registration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_auditmanager_account_registration

[@@@deriving.end]

let aws_auditmanager_account_registration ?delegated_admin_account
    ?deregister_on_destroy ?kms_key () :
    aws_auditmanager_account_registration =
  { delegated_admin_account; deregister_on_destroy; kms_key }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
