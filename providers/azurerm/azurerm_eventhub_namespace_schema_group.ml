(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_eventhub_namespace_schema_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  namespace_id : string prop;  (** namespace_id *)
  schema_compatibility : string prop;  (** schema_compatibility *)
  schema_type : string prop;  (** schema_type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_schema_group *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_eventhub_namespace_schema_group ?id ?timeouts ~name
    ~namespace_id ~schema_compatibility ~schema_type () :
    azurerm_eventhub_namespace_schema_group =
  {
    id;
    name;
    namespace_id;
    schema_compatibility;
    schema_type;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  namespace_id : string prop;
  schema_compatibility : string prop;
  schema_type : string prop;
}

let make ?id ?timeouts ~name ~namespace_id ~schema_compatibility
    ~schema_type __id =
  let __type = "azurerm_eventhub_namespace_schema_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace_id = Prop.computed __type __id "namespace_id";
       schema_compatibility =
         Prop.computed __type __id "schema_compatibility";
       schema_type = Prop.computed __type __id "schema_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventhub_namespace_schema_group
        (azurerm_eventhub_namespace_schema_group ?id ?timeouts ~name
           ~namespace_id ~schema_compatibility ~schema_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~namespace_id
    ~schema_compatibility ~schema_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~namespace_id ~schema_compatibility
      ~schema_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
