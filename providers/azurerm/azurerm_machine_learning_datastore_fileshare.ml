(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?account_key ?description ?id
    ?service_data_identity ?shared_access_signature ?tags ?timeouts
    ~name ~storage_fileshare_id ~workspace_id __resource_id =
  let __resource_type =
    "azurerm_machine_learning_datastore_fileshare"
  in
  let __resource =
    azurerm_machine_learning_datastore_fileshare ?account_key
      ?description ?id ?service_data_identity
      ?shared_access_signature ?tags ?timeouts ~name
      ~storage_fileshare_id ~workspace_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_machine_learning_datastore_fileshare
       __resource);
  let __resource_attributes =
    ({
       account_key =
         Prop.computed __resource_type __resource_id "account_key";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       is_default =
         Prop.computed __resource_type __resource_id "is_default";
       name = Prop.computed __resource_type __resource_id "name";
       service_data_identity =
         Prop.computed __resource_type __resource_id
           "service_data_identity";
       shared_access_signature =
         Prop.computed __resource_type __resource_id
           "shared_access_signature";
       storage_fileshare_id =
         Prop.computed __resource_type __resource_id
           "storage_fileshare_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
