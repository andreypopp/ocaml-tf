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

type azurerm_iotcentral_organization = {
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  iotcentral_application_id : string prop;
      (** iotcentral_application_id *)
  organization_id : string prop;  (** organization_id *)
  parent_organization_id : string prop option; [@option]
      (** parent_organization_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iotcentral_organization *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iotcentral_organization ?id ?parent_organization_id
    ?timeouts ~display_name ~iotcentral_application_id
    ~organization_id () : azurerm_iotcentral_organization =
  {
    display_name;
    id;
    iotcentral_application_id;
    organization_id;
    parent_organization_id;
    timeouts;
  }

type t = {
  display_name : string prop;
  id : string prop;
  iotcentral_application_id : string prop;
  organization_id : string prop;
  parent_organization_id : string prop;
}

let make ?id ?parent_organization_id ?timeouts ~display_name
    ~iotcentral_application_id ~organization_id __id =
  let __type = "azurerm_iotcentral_organization" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       iotcentral_application_id =
         Prop.computed __type __id "iotcentral_application_id";
       organization_id = Prop.computed __type __id "organization_id";
       parent_organization_id =
         Prop.computed __type __id "parent_organization_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iotcentral_organization
        (azurerm_iotcentral_organization ?id ?parent_organization_id
           ?timeouts ~display_name ~iotcentral_application_id
           ~organization_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parent_organization_id ?timeouts
    ~display_name ~iotcentral_application_id ~organization_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parent_organization_id ?timeouts ~display_name
      ~iotcentral_application_id ~organization_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
