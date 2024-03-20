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

type azurerm_resource_group = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_by : string prop option; [@option]  (** managed_by *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_resource_group ?id ?managed_by ?tags ?timeouts ~location
    ~name () : azurerm_resource_group =
  { id; location; managed_by; name; tags; timeouts }

type t = {
  id : string prop;
  location : string prop;
  managed_by : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?managed_by ?tags ?timeouts ~location ~name __id =
  let __type = "azurerm_resource_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       managed_by = Prop.computed __type __id "managed_by";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_resource_group
        (azurerm_resource_group ?id ?managed_by ?tags ?timeouts
           ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?managed_by ?tags ?timeouts ~location
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?managed_by ?tags ?timeouts ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
