(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type field = {
  is_encrypted : bool prop option; [@option]  (** is_encrypted *)
  is_optional : bool prop option; [@option]  (** is_optional *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** field *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_automation_connection_type = {
  automation_account_name : string prop;
      (** automation_account_name *)
  id : string prop option; [@option]  (** id *)
  is_global : bool prop option; [@option]  (** is_global *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  field : field list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection_type *)

let field ?is_encrypted ?is_optional ~name ~type_ () : field =
  { is_encrypted; is_optional; name; type_ }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_automation_connection_type ?id ?is_global ?timeouts
    ~automation_account_name ~name ~resource_group_name ~field () :
    azurerm_automation_connection_type =
  {
    automation_account_name;
    id;
    is_global;
    name;
    resource_group_name;
    field;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  id : string prop;
  is_global : bool prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?is_global ?timeouts ~automation_account_name ~name
    ~resource_group_name ~field __id =
  let __type = "azurerm_automation_connection_type" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       id = Prop.computed __type __id "id";
       is_global = Prop.computed __type __id "is_global";
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
      yojson_of_azurerm_automation_connection_type
        (azurerm_automation_connection_type ?id ?is_global ?timeouts
           ~automation_account_name ~name ~resource_group_name ~field
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_global ?timeouts
    ~automation_account_name ~name ~resource_group_name ~field __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_global ?timeouts ~automation_account_name ~name
      ~resource_group_name ~field __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
