(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_datadog_monitor_sso_configuration = {
  datadog_monitor_id : string prop;  (** datadog_monitor_id *)
  enterprise_application_id : string prop;
      (** enterprise_application_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  single_sign_on_enabled : string prop;
      (** single_sign_on_enabled *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor_sso_configuration *)

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
