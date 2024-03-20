(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type subnet = {
  use_in_virtual_machine_creation : string prop option; [@option]
      (** use_in_virtual_machine_creation *)
  use_public_ip_address : string prop option; [@option]
      (** use_public_ip_address *)
}
[@@deriving yojson_of]
(** subnet *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dev_test_virtual_network = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  lab_name : string prop;  (** lab_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  subnet : subnet list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_virtual_network *)

let subnet ?use_in_virtual_machine_creation ?use_public_ip_address ()
    : subnet =
  { use_in_virtual_machine_creation; use_public_ip_address }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_test_virtual_network ?description ?id ?tags ?timeouts
    ~lab_name ~name ~resource_group_name ~subnet () :
    azurerm_dev_test_virtual_network =
  {
    description;
    id;
    lab_name;
    name;
    resource_group_name;
    tags;
    subnet;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  lab_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  unique_identifier : string prop;
}

let make ?description ?id ?tags ?timeouts ~lab_name ~name
    ~resource_group_name ~subnet __id =
  let __type = "azurerm_dev_test_virtual_network" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       lab_name = Prop.computed __type __id "lab_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       unique_identifier =
         Prop.computed __type __id "unique_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_test_virtual_network
        (azurerm_dev_test_virtual_network ?description ?id ?tags
           ?timeouts ~lab_name ~name ~resource_group_name ~subnet ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?timeouts ~lab_name
    ~name ~resource_group_name ~subnet __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?timeouts ~lab_name ~name
      ~resource_group_name ~subnet __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
