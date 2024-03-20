(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type delegated_services = {
  delegation_enabled_date : string prop;
  service_principal : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delegated_services) -> ()

let yojson_of_delegated_services =
  (function
   | {
       delegation_enabled_date = v_delegation_enabled_date;
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
         let arg =
           yojson_of_prop yojson_of_string v_delegation_enabled_date
         in
         ("delegation_enabled_date", arg) :: bnds
       in
       `Assoc bnds
    : delegated_services -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delegated_services

[@@@deriving.end]

type aws_organizations_delegated_services = {
  account_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_organizations_delegated_services) -> ()

let yojson_of_aws_organizations_delegated_services =
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
    : aws_organizations_delegated_services ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_organizations_delegated_services

[@@@deriving.end]

let aws_organizations_delegated_services ?id ~account_id () :
    aws_organizations_delegated_services =
  { account_id; id }

type t = {
  account_id : string prop;
  delegated_services : delegated_services list prop;
  id : string prop;
}

let make ?id ~account_id __id =
  let __type = "aws_organizations_delegated_services" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       delegated_services =
         Prop.computed __type __id "delegated_services";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_delegated_services
        (aws_organizations_delegated_services ?id ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id __id =
  let (r : _ Tf_core.resource) = make ?id ~account_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
