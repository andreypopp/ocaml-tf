(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_credential_user_managed_identity__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_credential_user_managed_identity__timeouts *)

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
  timeouts :
    azurerm_data_factory_credential_user_managed_identity__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_credential_user_managed_identity *)

let azurerm_data_factory_credential_user_managed_identity
    ?annotations ?description ?id ?timeouts ~data_factory_id
    ~identity_id ~name __resource_id =
  let __resource_type =
    "azurerm_data_factory_credential_user_managed_identity"
  in
  let __resource =
    {
      annotations;
      data_factory_id;
      description;
      id;
      identity_id;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_credential_user_managed_identity
       __resource);
  ()
