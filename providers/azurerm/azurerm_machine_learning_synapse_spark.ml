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
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_machine_learning_synapse_spark = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  local_auth_enabled : bool prop option; [@option]
      (** local_auth_enabled *)
  location : string prop;  (** location *)
  machine_learning_workspace_id : string prop;
      (** machine_learning_workspace_id *)
  name : string prop;  (** name *)
  synapse_spark_pool_id : string prop;  (** synapse_spark_pool_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_synapse_spark *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_machine_learning_synapse_spark ?description ?id
    ?local_auth_enabled ?tags ?timeouts ~location
    ~machine_learning_workspace_id ~name ~synapse_spark_pool_id
    ~identity () : azurerm_machine_learning_synapse_spark =
  {
    description;
    id;
    local_auth_enabled;
    location;
    machine_learning_workspace_id;
    name;
    synapse_spark_pool_id;
    tags;
    identity;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  synapse_spark_pool_id : string prop;
  tags : (string * string) list prop;
}

let make ?description ?id ?local_auth_enabled ?tags ?timeouts
    ~location ~machine_learning_workspace_id ~name
    ~synapse_spark_pool_id ~identity __id =
  let __type = "azurerm_machine_learning_synapse_spark" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       local_auth_enabled =
         Prop.computed __type __id "local_auth_enabled";
       location = Prop.computed __type __id "location";
       machine_learning_workspace_id =
         Prop.computed __type __id "machine_learning_workspace_id";
       name = Prop.computed __type __id "name";
       synapse_spark_pool_id =
         Prop.computed __type __id "synapse_spark_pool_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_machine_learning_synapse_spark
        (azurerm_machine_learning_synapse_spark ?description ?id
           ?local_auth_enabled ?tags ?timeouts ~location
           ~machine_learning_workspace_id ~name
           ~synapse_spark_pool_id ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?local_auth_enabled ?tags
    ?timeouts ~location ~machine_learning_workspace_id ~name
    ~synapse_spark_pool_id ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?local_auth_enabled ?tags ?timeouts
      ~location ~machine_learning_workspace_id ~name
      ~synapse_spark_pool_id ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
