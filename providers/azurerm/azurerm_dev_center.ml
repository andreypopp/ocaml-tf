(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dev_center = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_center *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_center ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity () : azurerm_dev_center =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    identity;
    timeouts;
  }

type t = {
  dev_center_uri : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~identity __id =
  let __type = "azurerm_dev_center" in
  let __attrs =
    ({
       dev_center_uri = Prop.computed __type __id "dev_center_uri";
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
      yojson_of_azurerm_dev_center
        (azurerm_dev_center ?id ?tags ?timeouts ~location ~name
           ~resource_group_name ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
