(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_automation_connection_service_principal = {
  application_id : string prop;
  automation_account_name : string prop;
  certificate_thumbprint : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  subscription_id : string prop;
  tenant_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_automation_connection_service_principal) -> ()

let yojson_of_azurerm_automation_connection_service_principal =
  (function
   | {
       application_id = v_application_id;
       automation_account_name = v_automation_account_name;
       certificate_thumbprint = v_certificate_thumbprint;
       description = v_description;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       subscription_id = v_subscription_id;
       tenant_id = v_tenant_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subscription_id
         in
         ("subscription_id", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_thumbprint
         in
         ("certificate_thumbprint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_name
         in
         ("automation_account_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_connection_service_principal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_connection_service_principal

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_connection_service_principal ?description ?id
    ?timeouts ~application_id ~automation_account_name
    ~certificate_thumbprint ~name ~resource_group_name
    ~subscription_id ~tenant_id () :
    azurerm_automation_connection_service_principal =
  {
    application_id;
    automation_account_name;
    certificate_thumbprint;
    description;
    id;
    name;
    resource_group_name;
    subscription_id;
    tenant_id;
    timeouts;
  }

type t = {
  tf_name : string;
  application_id : string prop;
  automation_account_name : string prop;
  certificate_thumbprint : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  subscription_id : string prop;
  tenant_id : string prop;
}

let make ?description ?id ?timeouts ~application_id
    ~automation_account_name ~certificate_thumbprint ~name
    ~resource_group_name ~subscription_id ~tenant_id __id =
  let __type = "azurerm_automation_connection_service_principal" in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       certificate_thumbprint =
         Prop.computed __type __id "certificate_thumbprint";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subscription_id = Prop.computed __type __id "subscription_id";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_connection_service_principal
        (azurerm_automation_connection_service_principal ?description
           ?id ?timeouts ~application_id ~automation_account_name
           ~certificate_thumbprint ~name ~resource_group_name
           ~subscription_id ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~application_id
    ~automation_account_name ~certificate_thumbprint ~name
    ~resource_group_name ~subscription_id ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~application_id
      ~automation_account_name ~certificate_thumbprint ~name
      ~resource_group_name ~subscription_id ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
