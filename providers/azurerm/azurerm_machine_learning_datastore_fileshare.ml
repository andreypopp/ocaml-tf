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

type azurerm_machine_learning_datastore_fileshare = {
  account_key : string prop option; [@option]  (** account_key *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  service_data_identity : string prop option; [@option]
      (** service_data_identity *)
  shared_access_signature : string prop option; [@option]
      (** shared_access_signature *)
  storage_fileshare_id : string prop;  (** storage_fileshare_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_datastore_fileshare *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_machine_learning_datastore_fileshare ?account_key
    ?description ?id ?service_data_identity ?shared_access_signature
    ?tags ?timeouts ~name ~storage_fileshare_id ~workspace_id () :
    azurerm_machine_learning_datastore_fileshare =
  {
    account_key;
    description;
    id;
    name;
    service_data_identity;
    shared_access_signature;
    storage_fileshare_id;
    tags;
    workspace_id;
    timeouts;
  }

type t = {
  account_key : string prop;
  description : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  service_data_identity : string prop;
  shared_access_signature : string prop;
  storage_fileshare_id : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

let make ?account_key ?description ?id ?service_data_identity
    ?shared_access_signature ?tags ?timeouts ~name
    ~storage_fileshare_id ~workspace_id __id =
  let __type = "azurerm_machine_learning_datastore_fileshare" in
  let __attrs =
    ({
       account_key = Prop.computed __type __id "account_key";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       name = Prop.computed __type __id "name";
       service_data_identity =
         Prop.computed __type __id "service_data_identity";
       shared_access_signature =
         Prop.computed __type __id "shared_access_signature";
       storage_fileshare_id =
         Prop.computed __type __id "storage_fileshare_id";
       tags = Prop.computed __type __id "tags";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_machine_learning_datastore_fileshare
        (azurerm_machine_learning_datastore_fileshare ?account_key
           ?description ?id ?service_data_identity
           ?shared_access_signature ?tags ?timeouts ~name
           ~storage_fileshare_id ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?account_key ?description ?id
    ?service_data_identity ?shared_access_signature ?tags ?timeouts
    ~name ~storage_fileshare_id ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?account_key ?description ?id ?service_data_identity
      ?shared_access_signature ?tags ?timeouts ~name
      ~storage_fileshare_id ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
