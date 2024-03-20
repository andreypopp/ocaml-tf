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

type azurerm_machine_learning_datastore_datalake_gen2 = {
  authority_url : string prop option; [@option]  (** authority_url *)
  client_id : string prop option; [@option]  (** client_id *)
  client_secret : string prop option; [@option]  (** client_secret *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  service_data_identity : string prop option; [@option]
      (** service_data_identity *)
  storage_container_id : string prop;  (** storage_container_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_datastore_datalake_gen2 *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_machine_learning_datastore_datalake_gen2 ?authority_url
    ?client_id ?client_secret ?description ?id ?service_data_identity
    ?tags ?tenant_id ?timeouts ~name ~storage_container_id
    ~workspace_id () :
    azurerm_machine_learning_datastore_datalake_gen2 =
  {
    authority_url;
    client_id;
    client_secret;
    description;
    id;
    name;
    service_data_identity;
    storage_container_id;
    tags;
    tenant_id;
    workspace_id;
    timeouts;
  }

type t = {
  authority_url : string prop;
  client_id : string prop;
  client_secret : string prop;
  description : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  service_data_identity : string prop;
  storage_container_id : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  workspace_id : string prop;
}

let make ?authority_url ?client_id ?client_secret ?description ?id
    ?service_data_identity ?tags ?tenant_id ?timeouts ~name
    ~storage_container_id ~workspace_id __id =
  let __type = "azurerm_machine_learning_datastore_datalake_gen2" in
  let __attrs =
    ({
       authority_url = Prop.computed __type __id "authority_url";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       name = Prop.computed __type __id "name";
       service_data_identity =
         Prop.computed __type __id "service_data_identity";
       storage_container_id =
         Prop.computed __type __id "storage_container_id";
       tags = Prop.computed __type __id "tags";
       tenant_id = Prop.computed __type __id "tenant_id";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_machine_learning_datastore_datalake_gen2
        (azurerm_machine_learning_datastore_datalake_gen2
           ?authority_url ?client_id ?client_secret ?description ?id
           ?service_data_identity ?tags ?tenant_id ?timeouts ~name
           ~storage_container_id ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?authority_url ?client_id ?client_secret
    ?description ?id ?service_data_identity ?tags ?tenant_id
    ?timeouts ~name ~storage_container_id ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?authority_url ?client_id ?client_secret ?description ?id
      ?service_data_identity ?tags ?tenant_id ?timeouts ~name
      ~storage_container_id ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
