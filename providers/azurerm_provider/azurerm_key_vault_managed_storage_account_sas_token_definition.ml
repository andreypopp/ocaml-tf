(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_managed_storage_account_sas_token_definition__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_storage_account_sas_token_definition__timeouts *)

type azurerm_key_vault_managed_storage_account_sas_token_definition = {
  id : string prop option; [@option]  (** id *)
  managed_storage_account_id : string prop;
      (** managed_storage_account_id *)
  name : string prop;  (** name *)
  sas_template_uri : string prop;  (** sas_template_uri *)
  sas_type : string prop;  (** sas_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  validity_period : string prop;  (** validity_period *)
  timeouts :
    azurerm_key_vault_managed_storage_account_sas_token_definition__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_storage_account_sas_token_definition *)

let azurerm_key_vault_managed_storage_account_sas_token_definition
    ?id ?tags ?timeouts ~managed_storage_account_id ~name
    ~sas_template_uri ~sas_type ~validity_period __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_storage_account_sas_token_definition"
  in
  let __resource =
    {
      id;
      managed_storage_account_id;
      name;
      sas_template_uri;
      sas_type;
      tags;
      validity_period;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_managed_storage_account_sas_token_definition
       __resource);
  ()
