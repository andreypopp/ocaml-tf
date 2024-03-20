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

type azurerm_automation_connection = {
  automation_account_name : string prop;
      (** automation_account_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  type_ : string prop; [@key "type"]  (** type *)
  values : (string * string prop) list;  (** values *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_connection ?description ?id ?timeouts
    ~automation_account_name ~name ~resource_group_name ~type_
    ~values () : azurerm_automation_connection =
  {
    automation_account_name;
    description;
    id;
    name;
    resource_group_name;
    type_;
    values;
    timeouts;
  }

type t = {
  automation_account_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop;
  values : (string * string) list prop;
}

let make ?description ?id ?timeouts ~automation_account_name ~name
    ~resource_group_name ~type_ ~values __id =
  let __type = "azurerm_automation_connection" in
  let __attrs =
    ({
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       type_ = Prop.computed __type __id "type";
       values = Prop.computed __type __id "values";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_connection
        (azurerm_automation_connection ?description ?id ?timeouts
           ~automation_account_name ~name ~resource_group_name ~type_
           ~values ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~automation_account_name ~name ~resource_group_name ~type_
    ~values __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~automation_account_name ~name
      ~resource_group_name ~type_ ~values __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
