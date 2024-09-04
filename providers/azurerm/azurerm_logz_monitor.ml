(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type plan = {
  billing_cycle : string prop;
  effective_date : string prop;
  plan_id : string prop option; [@option]
  usage_type : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_usage_type in
         ("usage_type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_billing_cycle in
         ("billing_cycle", arg) :: bnds
       in
       `Assoc bnds
    : plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_plan

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type azurerm_logz_monitor = {
  company_name : string prop option; [@option]
  enabled : bool prop option; [@option]
  enterprise_app_id : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  plan : plan list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  user : user list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_logz_monitor) -> ()

let yojson_of_azurerm_logz_monitor =
  (function
   | {
       company_name = v_company_name;
       enabled = v_enabled;
       enterprise_app_id = v_enterprise_app_id;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       plan = v_plan;
       timeouts = v_timeouts;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user then bnds
         else
           let arg = (yojson_of_list yojson_of_user) v_user in
           let bnd = "user", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_plan then bnds
         else
           let arg = (yojson_of_list yojson_of_plan) v_plan in
           let bnd = "plan", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enterprise_app_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enterprise_app_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_company_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "company_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_logz_monitor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_logz_monitor

[@@@deriving.end]

let plan ?plan_id ~billing_cycle ~effective_date ~usage_type () :
    plan =
  { billing_cycle; effective_date; plan_id; usage_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let user ~email ~first_name ~last_name ~phone_number () : user =
  { email; first_name; last_name; phone_number }

let azurerm_logz_monitor ?company_name ?enabled ?enterprise_app_id
    ?id ?tags ?timeouts ~location ~name ~resource_group_name ~plan
    ~user () : azurerm_logz_monitor =
  {
    company_name;
    enabled;
    enterprise_app_id;
    id;
    location;
    name;
    resource_group_name;
    tags;
    plan;
    timeouts;
    user;
  }

type t = {
  tf_name : string;
  company_name : string prop;
  enabled : bool prop;
  enterprise_app_id : string prop;
  id : string prop;
  location : string prop;
  logz_organization_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  single_sign_on_url : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?company_name ?enabled ?enterprise_app_id ?id ?tags
    ?timeouts ~location ~name ~resource_group_name ~plan ~user __id =
  let __type = "azurerm_logz_monitor" in
  let __attrs =
    ({
       tf_name = __id;
       company_name = Prop.computed __type __id "company_name";
       enabled = Prop.computed __type __id "enabled";
       enterprise_app_id =
         Prop.computed __type __id "enterprise_app_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       logz_organization_id =
         Prop.computed __type __id "logz_organization_id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       single_sign_on_url =
         Prop.computed __type __id "single_sign_on_url";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logz_monitor
        (azurerm_logz_monitor ?company_name ?enabled
           ?enterprise_app_id ?id ?tags ?timeouts ~location ~name
           ~resource_group_name ~plan ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?company_name ?enabled ?enterprise_app_id ?id
    ?tags ?timeouts ~location ~name ~resource_group_name ~plan ~user
    __id =
  let (r : _ Tf_core.resource) =
    make ?company_name ?enabled ?enterprise_app_id ?id ?tags
      ?timeouts ~location ~name ~resource_group_name ~plan ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
