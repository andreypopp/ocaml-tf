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

type azurerm_automation_credential = {
  automation_account_name : string prop;
      (** automation_account_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  username : string prop;  (** username *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_credential *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_credential ?description ?id ?timeouts
    ~automation_account_name ~name ~password ~resource_group_name
    ~username () : azurerm_automation_credential =
  {
    automation_account_name;
    description;
    id;
    name;
    password;
    resource_group_name;
    username;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  username : string prop;
}

let make ?description ?id ?timeouts ~automation_account_name ~name
    ~password ~resource_group_name ~username __id =
  let __type = "azurerm_automation_credential" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_credential
        (azurerm_automation_credential ?description ?id ?timeouts
           ~automation_account_name ~name ~password
           ~resource_group_name ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~automation_account_name ~name ~password ~resource_group_name
    ~username __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~automation_account_name ~name
      ~password ~resource_group_name ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
