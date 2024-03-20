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

type azurerm_datadog_monitor_sso_configuration = {
  datadog_monitor_id : string prop;
  enterprise_application_id : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  single_sign_on_enabled : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_datadog_monitor_sso_configuration) -> ()

let yojson_of_azurerm_datadog_monitor_sso_configuration =
  (function
   | {
       datadog_monitor_id = v_datadog_monitor_id;
       enterprise_application_id = v_enterprise_application_id;
       id = v_id;
       name = v_name;
       single_sign_on_enabled = v_single_sign_on_enabled;
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
         let arg =
           yojson_of_prop yojson_of_string v_single_sign_on_enabled
         in
         ("single_sign_on_enabled", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         let arg =
           yojson_of_prop yojson_of_string
             v_enterprise_application_id
         in
         ("enterprise_application_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_datadog_monitor_id
         in
         ("datadog_monitor_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_datadog_monitor_sso_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_datadog_monitor_sso_configuration

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_datadog_monitor_sso_configuration ?id ?name ?timeouts
    ~datadog_monitor_id ~enterprise_application_id
    ~single_sign_on_enabled () :
    azurerm_datadog_monitor_sso_configuration =
  {
    datadog_monitor_id;
    enterprise_application_id;
    id;
    name;
    single_sign_on_enabled;
    timeouts;
  }

type t = {
  datadog_monitor_id : string prop;
  enterprise_application_id : string prop;
  id : string prop;
  login_url : string prop;
  name : string prop;
  single_sign_on_enabled : string prop;
}

let make ?id ?name ?timeouts ~datadog_monitor_id
    ~enterprise_application_id ~single_sign_on_enabled __id =
  let __type = "azurerm_datadog_monitor_sso_configuration" in
  let __attrs =
    ({
       datadog_monitor_id =
         Prop.computed __type __id "datadog_monitor_id";
       enterprise_application_id =
         Prop.computed __type __id "enterprise_application_id";
       id = Prop.computed __type __id "id";
       login_url = Prop.computed __type __id "login_url";
       name = Prop.computed __type __id "name";
       single_sign_on_enabled =
         Prop.computed __type __id "single_sign_on_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_datadog_monitor_sso_configuration
        (azurerm_datadog_monitor_sso_configuration ?id ?name
           ?timeouts ~datadog_monitor_id ~enterprise_application_id
           ~single_sign_on_enabled ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~datadog_monitor_id
    ~enterprise_application_id ~single_sign_on_enabled __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~datadog_monitor_id
      ~enterprise_application_id ~single_sign_on_enabled __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
