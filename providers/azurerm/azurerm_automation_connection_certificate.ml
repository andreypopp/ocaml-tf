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

type azurerm_automation_connection_certificate = {
  automation_account_name : string prop;
      (** automation_account_name *)
  automation_certificate_name : string prop;
      (** automation_certificate_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  subscription_id : string prop;  (** subscription_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection_certificate *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_connection_certificate ?description ?id
    ?timeouts ~automation_account_name ~automation_certificate_name
    ~name ~resource_group_name ~subscription_id () :
    azurerm_automation_connection_certificate =
  {
    automation_account_name;
    automation_certificate_name;
    description;
    id;
    name;
    resource_group_name;
    subscription_id;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  automation_certificate_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  subscription_id : string prop;
}

let make ?description ?id ?timeouts ~automation_account_name
    ~automation_certificate_name ~name ~resource_group_name
    ~subscription_id __id =
  let __type = "azurerm_automation_connection_certificate" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       automation_certificate_name =
         Prop.computed __type __id "automation_certificate_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subscription_id = Prop.computed __type __id "subscription_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_connection_certificate
        (azurerm_automation_connection_certificate ?description ?id
           ?timeouts ~automation_account_name
           ~automation_certificate_name ~name ~resource_group_name
           ~subscription_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~automation_account_name ~automation_certificate_name ~name
    ~resource_group_name ~subscription_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~automation_account_name
      ~automation_certificate_name ~name ~resource_group_name
      ~subscription_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
