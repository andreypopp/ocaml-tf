(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type delegated_administrators = {
  arn : string prop;
  delegation_enabled_date : string prop;
  email : string prop;
  id : string prop;
  joined_method : string prop;
  joined_timestamp : string prop;
  name : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delegated_administrators) -> ()

let yojson_of_delegated_administrators =
  (function
   | {
       arn = v_arn;
       delegation_enabled_date = v_delegation_enabled_date;
       email = v_email;
       id = v_id;
       joined_method = v_joined_method;
       joined_timestamp = v_joined_timestamp;
       name = v_name;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_joined_timestamp
         in
         ("joined_timestamp", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_joined_method in
         ("joined_method", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_delegation_enabled_date
         in
         ("delegation_enabled_date", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : delegated_administrators -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delegated_administrators

[@@@deriving.end]

type aws_organizations_delegated_administrators = {
  id : string prop option; [@option]
  service_principal : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_organizations_delegated_administrators) -> ()

let yojson_of_aws_organizations_delegated_administrators =
  (function
   | { id = v_id; service_principal = v_service_principal } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_principal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_principal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_organizations_delegated_administrators ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_organizations_delegated_administrators

[@@@deriving.end]

let aws_organizations_delegated_administrators ?id ?service_principal
    () : aws_organizations_delegated_administrators =
  { id; service_principal }

type t = {
  tf_name : string;
  delegated_administrators : delegated_administrators list prop;
  id : string prop;
  service_principal : string prop;
}

let make ?id ?service_principal __id =
  let __type = "aws_organizations_delegated_administrators" in
  let __attrs =
    ({
       tf_name = __id;
       delegated_administrators =
         Prop.computed __type __id "delegated_administrators";
       id = Prop.computed __type __id "id";
       service_principal =
         Prop.computed __type __id "service_principal";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_delegated_administrators
        (aws_organizations_delegated_administrators ?id
           ?service_principal ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?service_principal __id =
  let (r : _ Tf_core.resource) = make ?id ?service_principal __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
