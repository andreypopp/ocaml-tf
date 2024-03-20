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

type azurerm_automation_variable_object = {
  automation_account_name : string prop;
      (** automation_account_name *)
  description : string prop option; [@option]  (** description *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  value : string prop option; [@option]  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_variable_object *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_variable_object ?description ?encrypted ?id
    ?value ?timeouts ~automation_account_name ~name
    ~resource_group_name () : azurerm_automation_variable_object =
  {
    automation_account_name;
    description;
    encrypted;
    id;
    name;
    resource_group_name;
    value;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  value : string prop;
}

let make ?description ?encrypted ?id ?value ?timeouts
    ~automation_account_name ~name ~resource_group_name __id =
  let __type = "azurerm_automation_variable_object" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       description = Prop.computed __type __id "description";
       encrypted = Prop.computed __type __id "encrypted";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_variable_object
        (azurerm_automation_variable_object ?description ?encrypted
           ?id ?value ?timeouts ~automation_account_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?encrypted ?id ?value ?timeouts
    ~automation_account_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?encrypted ?id ?value ?timeouts
      ~automation_account_name ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
