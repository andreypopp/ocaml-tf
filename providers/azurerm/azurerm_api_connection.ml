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

type azurerm_api_connection = {
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  managed_api_id : string prop;  (** managed_api_id *)
  name : string prop;  (** name *)
  parameter_values : (string * string prop) list option; [@option]
      (** parameter_values *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_connection ?display_name ?id ?parameter_values ?tags
    ?timeouts ~managed_api_id ~name ~resource_group_name () :
    azurerm_api_connection =
  {
    display_name;
    id;
    managed_api_id;
    name;
    parameter_values;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  display_name : string prop;
  id : string prop;
  managed_api_id : string prop;
  name : string prop;
  parameter_values : (string * string) list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?display_name ?id ?parameter_values ?tags ?timeouts
    ~managed_api_id ~name ~resource_group_name __id =
  let __type = "azurerm_api_connection" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       managed_api_id = Prop.computed __type __id "managed_api_id";
       name = Prop.computed __type __id "name";
       parameter_values =
         Prop.computed __type __id "parameter_values";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_connection
        (azurerm_api_connection ?display_name ?id ?parameter_values
           ?tags ?timeouts ~managed_api_id ~name ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?parameter_values ?tags
    ?timeouts ~managed_api_id ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?parameter_values ?tags ?timeouts
      ~managed_api_id ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
