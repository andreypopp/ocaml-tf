(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_confidential_ledger__azuread_based_service_principal = {
  ledger_role_name : string prop;  (** ledger_role_name *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_confidential_ledger__azuread_based_service_principal *)

type azurerm_confidential_ledger__certificate_based_security_principal = {
  ledger_role_name : string prop;  (** ledger_role_name *)
  pem_public_key : string prop;  (** pem_public_key *)
}
[@@deriving yojson_of]
(** azurerm_confidential_ledger__certificate_based_security_principal *)

type azurerm_confidential_ledger__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_confidential_ledger__timeouts *)

type azurerm_confidential_ledger = {
  id : string prop option; [@option]  (** id *)
  ledger_type : string prop;  (** ledger_type *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  azuread_based_service_principal :
    azurerm_confidential_ledger__azuread_based_service_principal list;
  certificate_based_security_principal :
    azurerm_confidential_ledger__certificate_based_security_principal
    list;
  timeouts : azurerm_confidential_ledger__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_confidential_ledger *)

let azurerm_confidential_ledger ?id ?tags ?timeouts ~ledger_type
    ~location ~name ~resource_group_name
    ~azuread_based_service_principal
    ~certificate_based_security_principal __resource_id =
  let __resource_type = "azurerm_confidential_ledger" in
  let __resource =
    {
      id;
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
