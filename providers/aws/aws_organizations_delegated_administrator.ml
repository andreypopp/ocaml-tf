(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_delegated_administrator = {
  account_id : string prop;
  id : string prop option; [@option]
  service_principal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_organizations_delegated_administrator) -> ()

let yojson_of_aws_organizations_delegated_administrator =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       service_principal = v_service_principal;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_principal
         in
         ("service_principal", arg) :: bnds
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
    : aws_organizations_delegated_administrator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_organizations_delegated_administrator

[@@@deriving.end]

let aws_organizations_delegated_administrator ?id ~account_id
    ~service_principal () : aws_organizations_delegated_administrator
    =
  { account_id; id; service_principal }

type t = {
  account_id : string prop;
  arn : string prop;
  delegation_enabled_date : string prop;
  email : string prop;
  id : string prop;
  joined_method : string prop;
  joined_timestamp : string prop;
  name : string prop;
  service_principal : string prop;
  status : string prop;
}

let make ?id ~account_id ~service_principal __id =
  let __type = "aws_organizations_delegated_administrator" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       arn = Prop.computed __type __id "arn";
       delegation_enabled_date =
         Prop.computed __type __id "delegation_enabled_date";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       joined_method = Prop.computed __type __id "joined_method";
       joined_timestamp =
         Prop.computed __type __id "joined_timestamp";
       name = Prop.computed __type __id "name";
       service_principal =
         Prop.computed __type __id "service_principal";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_delegated_administrator
        (aws_organizations_delegated_administrator ?id ~account_id
           ~service_principal ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~service_principal __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~service_principal __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
