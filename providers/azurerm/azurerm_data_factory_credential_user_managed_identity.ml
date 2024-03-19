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

type azurerm_data_factory_credential_user_managed_identity = {
  annotations : string prop list option; [@option]
      (** (Optional) List of string annotations. *)
  data_factory_id : string prop;
      (** The resource ID of the parent Data Factory *)
  description : string prop option; [@option]
      (** (Optional) Short text description *)
  id : string prop option; [@option]  (** id *)
  identity_id : string prop;
      (** The resource ID of the User Assigned Managed Identity *)
  name : string prop;
      (** The desired name of the credential resource *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_credential_user_managed_identity *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_credential_user_managed_identity
    ?annotations ?description ?id ?timeouts ~data_factory_id
    ~identity_id ~name () :
    azurerm_data_factory_credential_user_managed_identity =
  {
    annotations;
    data_factory_id;
    description;
    id;
    identity_id;
    name;
    timeouts;
  }

type t = {
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  identity_id : string prop;
  name : string prop;
}

let register ?tf_module ?annotations ?description ?id ?timeouts
    ~data_factory_id ~identity_id ~name __resource_id =
  let __resource_type =
    "azurerm_data_factory_credential_user_managed_identity"
  in
  let __resource =
    azurerm_data_factory_credential_user_managed_identity
      ?annotations ?description ?id ?timeouts ~data_factory_id
      ~identity_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_credential_user_managed_identity
       __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       identity_id =
         Prop.computed __resource_type __resource_id "identity_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
