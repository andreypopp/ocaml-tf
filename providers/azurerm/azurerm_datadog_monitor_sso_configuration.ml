(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?name ?timeouts ~datadog_monitor_id
    ~enterprise_application_id ~single_sign_on_enabled __resource_id
    =
  let __resource_type =
    "azurerm_datadog_monitor_sso_configuration"
  in
  let __resource =
    azurerm_datadog_monitor_sso_configuration ?id ?name ?timeouts
      ~datadog_monitor_id ~enterprise_application_id
      ~single_sign_on_enabled ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_datadog_monitor_sso_configuration __resource);
  let __resource_attributes =
    ({
       datadog_monitor_id =
         Prop.computed __resource_type __resource_id
           "datadog_monitor_id";
       enterprise_application_id =
         Prop.computed __resource_type __resource_id
           "enterprise_application_id";
       id = Prop.computed __resource_type __resource_id "id";
       login_url =
         Prop.computed __resource_type __resource_id "login_url";
       name = Prop.computed __resource_type __resource_id "name";
       single_sign_on_enabled =
         Prop.computed __resource_type __resource_id
           "single_sign_on_enabled";
     }
      : t)
  in
  __resource_attributes
