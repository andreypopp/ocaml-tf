(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type integration_runtime = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** integration_runtime *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_synapse_linked_service = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  type_ : string prop; [@key "type"]  (** type *)
  type_properties_json : string prop;  (** type_properties_json *)
  integration_runtime : integration_runtime list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_linked_service *)

let integration_runtime ?parameters ~name () : integration_runtime =
  { name; parameters }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_linked_service ?additional_properties
    ?annotations ?description ?id ?parameters ?timeouts ~name
    ~synapse_workspace_id ~type_ ~type_properties_json
    ~integration_runtime () : azurerm_synapse_linked_service =
  {
    additional_properties;
    annotations;
    description;
    id;
    name;
    parameters;
    synapse_workspace_id;
    type_;
    type_properties_json;
    integration_runtime;
    timeouts;
  }

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  synapse_workspace_id : string prop;
  type_ : string prop;
  type_properties_json : string prop;
}

let make ?additional_properties ?annotations ?description ?id
    ?parameters ?timeouts ~name ~synapse_workspace_id ~type_
    ~type_properties_json ~integration_runtime __id =
  let __type = "azurerm_synapse_linked_service" in
  let __attrs =
    ({
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
       type_ = Prop.computed __type __id "type";
       type_properties_json =
         Prop.computed __type __id "type_properties_json";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_linked_service
        (azurerm_synapse_linked_service ?additional_properties
           ?annotations ?description ?id ?parameters ?timeouts ~name
           ~synapse_workspace_id ~type_ ~type_properties_json
           ~integration_runtime ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_properties ?annotations
    ?description ?id ?parameters ?timeouts ~name
    ~synapse_workspace_id ~type_ ~type_properties_json
    ~integration_runtime __id =
  let (r : _ Tf_core.resource) =
    make ?additional_properties ?annotations ?description ?id
      ?parameters ?timeouts ~name ~synapse_workspace_id ~type_
      ~type_properties_json ~integration_runtime __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
