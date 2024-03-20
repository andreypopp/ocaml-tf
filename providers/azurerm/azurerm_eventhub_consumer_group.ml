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

type azurerm_eventhub_consumer_group = {
  eventhub_name : string prop;  (** eventhub_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  user_metadata : string prop option; [@option]  (** user_metadata *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_consumer_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_eventhub_consumer_group ?id ?user_metadata ?timeouts
    ~eventhub_name ~name ~namespace_name ~resource_group_name () :
    azurerm_eventhub_consumer_group =
  {
    eventhub_name;
    id;
    name;
    namespace_name;
    resource_group_name;
    user_metadata;
    timeouts;
  }

type t = {
  eventhub_name : string prop;
  id : string prop;
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  user_metadata : string prop;
}

let make ?id ?user_metadata ?timeouts ~eventhub_name ~name
    ~namespace_name ~resource_group_name __id =
  let __type = "azurerm_eventhub_consumer_group" in
  let __attrs =
    ({
       eventhub_name = Prop.computed __type __id "eventhub_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace_name = Prop.computed __type __id "namespace_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       user_metadata = Prop.computed __type __id "user_metadata";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventhub_consumer_group
        (azurerm_eventhub_consumer_group ?id ?user_metadata ?timeouts
           ~eventhub_name ~name ~namespace_name ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?user_metadata ?timeouts ~eventhub_name
    ~name ~namespace_name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?user_metadata ?timeouts ~eventhub_name ~name
      ~namespace_name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
