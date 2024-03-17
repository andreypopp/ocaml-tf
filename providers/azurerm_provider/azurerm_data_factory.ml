(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory__github_configuration = {
  account_name : string prop;  (** account_name *)
  branch_name : string prop;  (** branch_name *)
  git_url : string prop option; [@option]  (** git_url *)
  publishing_enabled : bool prop option; [@option]
      (** publishing_enabled *)
  repository_name : string prop;  (** repository_name *)
  root_folder : string prop;  (** root_folder *)
}
[@@deriving yojson_of]
(** azurerm_data_factory__github_configuration *)

type azurerm_data_factory__global_parameter = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_data_factory__global_parameter *)

type azurerm_data_factory__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory__identity *)

type azurerm_data_factory__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory__timeouts *)

type azurerm_data_factory__vsts_configuration = {
  account_name : string prop;  (** account_name *)
  branch_name : string prop;  (** branch_name *)
  project_name : string prop;  (** project_name *)
  publishing_enabled : bool prop option; [@option]
      (** publishing_enabled *)
  repository_name : string prop;  (** repository_name *)
  root_folder : string prop;  (** root_folder *)
  tenant_id : string prop;  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_data_factory__vsts_configuration *)

type azurerm_data_factory = {
  customer_managed_key_id : string prop option; [@option]
      (** customer_managed_key_id *)
  customer_managed_key_identity_id : string prop option; [@option]
      (** customer_managed_key_identity_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_virtual_network_enabled : bool prop option; [@option]
      (** managed_virtual_network_enabled *)
  name : string prop;  (** name *)
  public_network_enabled : bool prop option; [@option]
      (** public_network_enabled *)
  purview_id : string prop option; [@option]  (** purview_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  github_configuration :
    azurerm_data_factory__github_configuration list;
  global_parameter : azurerm_data_factory__global_parameter list;
  identity : azurerm_data_factory__identity list;
  timeouts : azurerm_data_factory__timeouts option;
  vsts_configuration : azurerm_data_factory__vsts_configuration list;
}
[@@deriving yojson_of]
(** azurerm_data_factory *)

let azurerm_data_factory ?customer_managed_key_id
    ?customer_managed_key_identity_id ?id
    ?managed_virtual_network_enabled ?public_network_enabled
    ?purview_id ?tags ?timeouts ~location ~name ~resource_group_name
    ~github_configuration ~global_parameter ~identity
    ~vsts_configuration __resource_id =
  let __resource_type = "azurerm_data_factory" in
  let __resource =
    {
      customer_managed_key_id;
      customer_managed_key_identity_id;
      id;
      location;
      managed_virtual_network_enabled;
      name;
      public_network_enabled;
      purview_id;
      resource_group_name;
      tags;
      github_configuration;
      global_parameter;
      identity;
      timeouts;
      vsts_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory __resource);
  ()
