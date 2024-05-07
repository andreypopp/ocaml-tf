(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type plan = {
  billing_cycle : string prop option; [@option]
  effective_date : string prop;
  plan_id : string prop option; [@option]
  usage_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : plan) -> ()

let yojson_of_plan =
  (function
   | {
       billing_cycle = v_billing_cycle;
       effective_date = v_effective_date;
       plan_id = v_plan_id;
       usage_type = v_usage_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_usage_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "usage_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_plan_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "plan_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_effective_date
         in
         ("effective_date", arg) :: bnds
       in
       let bnds =
         match v_billing_cycle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_cycle", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_plan

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type user = {
  email : string prop;
  first_name : string prop;
  last_name : string prop;
  phone_number : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user) -> ()

let yojson_of_user =
  (function
   | {
       email = v_email;
       first_name = v_first_name;
       last_name = v_last_name;
       phone_number = v_phone_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_name in
         ("last_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_first_name in
         ("first_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user

[@@@deriving.end]

type azurerm_new_relic_monitor = {
  account_creation_source : string prop option; [@option]
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  ingestion_key : string prop option; [@option]
  location : string prop;
  name : string prop;
  org_creation_source : string prop option; [@option]
  organization_id : string prop option; [@option]
  resource_group_name : string prop;
  user_id : string prop option; [@option]
  plan : plan list;
  timeouts : timeouts option;
  user : user list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_new_relic_monitor) -> ()

let yojson_of_azurerm_new_relic_monitor =
  (function
   | {
       account_creation_source = v_account_creation_source;
       account_id = v_account_id;
       id = v_id;
       ingestion_key = v_ingestion_key;
       location = v_location;
       name = v_name;
       org_creation_source = v_org_creation_source;
       organization_id = v_organization_id;
       resource_group_name = v_resource_group_name;
       user_id = v_user_id;
       plan = v_plan;
       timeouts = v_timeouts;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_user v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_plan v_plan in
         ("plan", arg) :: bnds
       in
       let bnds =
         match v_user_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_organization_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_org_creation_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "org_creation_source", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_ingestion_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ingestion_key", arg in
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
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_creation_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_creation_source", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_new_relic_monitor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_new_relic_monitor

[@@@deriving.end]

let plan ?billing_cycle ?plan_id ?usage_type ~effective_date () :
    plan =
  { billing_cycle; effective_date; plan_id; usage_type }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let user ~email ~first_name ~last_name ~phone_number () : user =
  { email; first_name; last_name; phone_number }

let azurerm_new_relic_monitor ?account_creation_source ?account_id
    ?id ?ingestion_key ?org_creation_source ?organization_id ?user_id
    ?timeouts ~location ~name ~resource_group_name ~plan ~user () :
    azurerm_new_relic_monitor =
  {
    account_creation_source;
    account_id;
    id;
    ingestion_key;
    location;
    name;
    org_creation_source;
    organization_id;
    resource_group_name;
    user_id;
    plan;
    timeouts;
    user;
  }

type t = {
  tf_name : string;
  account_creation_source : string prop;
  account_id : string prop;
  id : string prop;
  ingestion_key : string prop;
  location : string prop;
  name : string prop;
  org_creation_source : string prop;
  organization_id : string prop;
  resource_group_name : string prop;
  user_id : string prop;
}

let make ?account_creation_source ?account_id ?id ?ingestion_key
    ?org_creation_source ?organization_id ?user_id ?timeouts
    ~location ~name ~resource_group_name ~plan ~user __id =
  let __type = "azurerm_new_relic_monitor" in
  let __attrs =
    ({
       tf_name = __id;
       account_creation_source =
         Prop.computed __type __id "account_creation_source";
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       ingestion_key = Prop.computed __type __id "ingestion_key";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       org_creation_source =
         Prop.computed __type __id "org_creation_source";
       organization_id = Prop.computed __type __id "organization_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_new_relic_monitor
        (azurerm_new_relic_monitor ?account_creation_source
           ?account_id ?id ?ingestion_key ?org_creation_source
           ?organization_id ?user_id ?timeouts ~location ~name
           ~resource_group_name ~plan ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?account_creation_source ?account_id ?id
    ?ingestion_key ?org_creation_source ?organization_id ?user_id
    ?timeouts ~location ~name ~resource_group_name ~plan ~user __id =
  let (r : _ Tf_core.resource) =
    make ?account_creation_source ?account_id ?id ?ingestion_key
      ?org_creation_source ?organization_id ?user_id ?timeouts
      ~location ~name ~resource_group_name ~plan ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
