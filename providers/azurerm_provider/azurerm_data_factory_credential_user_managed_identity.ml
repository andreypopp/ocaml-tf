(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_factory_credential_user_managed_identity__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_credential_user_managed_identity__timeouts *)

type azurerm_data_factory_credential_user_managed_identity = {
  annotations : string list option; [@option]
      (** (Optional) List of string annotations. *)
  data_factory_id : string;
      (** The resource ID of the parent Data Factory *)
  description : string option; [@option]
      (** (Optional) Short text description *)
  identity_id : string;
      (** The resource ID of the User Assigned Managed Identity *)
  name : string;  (** The desired name of the credential resource *)
  timeouts :
    azurerm_data_factory_credential_user_managed_identity__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_credential_user_managed_identity *)

let azurerm_data_factory_credential_user_managed_identity
    ?annotations ?description ?timeouts ~data_factory_id ~identity_id
    ~name __resource_id =
  let __resource_type =
    "azurerm_data_factory_credential_user_managed_identity"
  in
  let __resource =
    {
      annotations;
      data_factory_id;
      description;
      identity_id;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_credential_user_managed_identity
       __resource);
  ()