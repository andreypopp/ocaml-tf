(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type module_link__hash = {
  algorithm : string prop;  (** algorithm *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** module_link__hash *)

type module_link = {
  uri : string prop;  (** uri *)
  hash : module_link__hash list;
}
[@@deriving yojson_of]
(** module_link *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_automation_module = {
  automation_account_name : string prop;
      (** automation_account_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  module_link : module_link list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_module *)

let module_link__hash ~algorithm ~value () : module_link__hash =
  { algorithm; value }

let module_link ~uri ~hash () : module_link = { uri; hash }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_module ?id ?timeouts ~automation_account_name
    ~name ~resource_group_name ~module_link () :
    azurerm_automation_module =
  {
    automation_account_name;
    id;
    name;
    resource_group_name;
    module_link;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~automation_account_name ~name
    ~resource_group_name ~module_link __id =
  let __type = "azurerm_automation_module" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_module
        (azurerm_automation_module ?id ?timeouts
           ~automation_account_name ~name ~resource_group_name
           ~module_link ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~automation_account_name ~name
    ~resource_group_name ~module_link __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~automation_account_name ~name
      ~resource_group_name ~module_link __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
