(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_confidential_ledger__azuread_based_service_principal = {
  ledger_role_name : string;  (** ledger_role_name *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_confidential_ledger__azuread_based_service_principal *)

type azurerm_confidential_ledger__certificate_based_security_principal = {
  ledger_role_name : string;  (** ledger_role_name *)
  pem_public_key : string;  (** pem_public_key *)
}
[@@deriving yojson_of]
(** azurerm_confidential_ledger__certificate_based_security_principal *)

type azurerm_confidential_ledger__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_confidential_ledger__timeouts *)

type azurerm_confidential_ledger = {
  ledger_type : string;  (** ledger_type *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  azuread_based_service_principal :
    azurerm_confidential_ledger__azuread_based_service_principal list;
  certificate_based_security_principal :
    azurerm_confidential_ledger__certificate_based_security_principal
    list;
  timeouts : azurerm_confidential_ledger__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_confidential_ledger *)

let azurerm_confidential_ledger ?tags ?timeouts ~ledger_type
    ~location ~name ~resource_group_name
    ~azuread_based_service_principal
    ~certificate_based_security_principal __resource_id =
  let __resource_type = "azurerm_confidential_ledger" in
  let __resource =
    {
      ledger_type;
      location;
      name;
      resource_group_name;
      tags;
      azuread_based_service_principal;
      certificate_based_security_principal;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_confidential_ledger __resource);
  ()
