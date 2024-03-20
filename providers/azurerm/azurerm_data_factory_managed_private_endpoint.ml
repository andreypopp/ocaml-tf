(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_factory_managed_private_endpoint = {
  data_factory_id : string prop;  (** data_factory_id *)
  fqdns : string prop list option; [@option]  (** fqdns *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subresource_name : string prop option; [@option]
      (** subresource_name *)
  target_resource_id : string prop;  (** target_resource_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_managed_private_endpoint *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_factory_managed_private_endpoint ?fqdns ?id
    ?subresource_name ?timeouts ~data_factory_id ~name
    ~target_resource_id () :
    azurerm_data_factory_managed_private_endpoint =
  {
    data_factory_id;
    fqdns;
    id;
    name;
    subresource_name;
    target_resource_id;
    timeouts;
  }

type t = {
  data_factory_id : string prop;
  fqdns : string list prop;
  id : string prop;
  name : string prop;
  subresource_name : string prop;
  target_resource_id : string prop;
}

let make ?fqdns ?id ?subresource_name ?timeouts ~data_factory_id
    ~name ~target_resource_id __id =
  let __type = "azurerm_data_factory_managed_private_endpoint" in
  let __attrs =
    ({
       data_factory_id = Prop.computed __type __id "data_factory_id";
       fqdns = Prop.computed __type __id "fqdns";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       subresource_name =
         Prop.computed __type __id "subresource_name";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_managed_private_endpoint
        (azurerm_data_factory_managed_private_endpoint ?fqdns ?id
           ?subresource_name ?timeouts ~data_factory_id ~name
           ~target_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?fqdns ?id ?subresource_name ?timeouts
    ~data_factory_id ~name ~target_resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?fqdns ?id ?subresource_name ?timeouts ~data_factory_id
      ~name ~target_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
