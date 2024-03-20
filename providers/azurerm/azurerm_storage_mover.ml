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

type azurerm_storage_mover = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_mover *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_mover ?description ?id ?tags ?timeouts ~location
    ~name ~resource_group_name () : azurerm_storage_mover =
  {
    description;
    id;
    location;
    name;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?description ?id ?tags ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_storage_mover" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
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
      yojson_of_azurerm_storage_mover
        (azurerm_storage_mover ?description ?id ?tags ?timeouts
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?timeouts ~location
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
