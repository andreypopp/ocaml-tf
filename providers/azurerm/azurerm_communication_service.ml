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

type azurerm_communication_service = {
  data_location : string prop option; [@option]  (** data_location *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_communication_service *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_communication_service ?data_location ?id ?tags ?timeouts
    ~name ~resource_group_name () : azurerm_communication_service =
  { data_location; id; name; resource_group_name; tags; timeouts }

type t = {
  data_location : string prop;
  id : string prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  tags : (string * string) list prop;
}

let make ?data_location ?id ?tags ?timeouts ~name
    ~resource_group_name __id =
  let __type = "azurerm_communication_service" in
  let __attrs =
    ({
       data_location = Prop.computed __type __id "data_location";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       primary_key = Prop.computed __type __id "primary_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       secondary_key = Prop.computed __type __id "secondary_key";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_communication_service
        (azurerm_communication_service ?data_location ?id ?tags
           ?timeouts ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?data_location ?id ?tags ?timeouts ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?data_location ?id ?tags ?timeouts ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
