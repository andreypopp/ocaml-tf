(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_cognitive_account__customer_managed_key = {
  identity_client_id : string option; [@option]
      (** identity_client_id *)
  key_vault_key_id : string;  (** key_vault_key_id *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_account__customer_managed_key *)

type azurerm_cognitive_account__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_account__identity *)

type azurerm_cognitive_account__network_acls__virtual_network_rules = {
  ignore_missing_vnet_service_endpoint : bool option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_account__network_acls__virtual_network_rules *)

type azurerm_cognitive_account__network_acls = {
  default_action : string;  (** default_action *)
  ip_rules : string list option; [@option]  (** ip_rules *)
  virtual_network_rules :
    azurerm_cognitive_account__network_acls__virtual_network_rules
    list;
}
[@@deriving yojson_of]
(** azurerm_cognitive_account__network_acls *)

type azurerm_cognitive_account__storage = {
  identity_client_id : string option; [@option]
      (** identity_client_id *)
  storage_account_id : string;  (** storage_account_id *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_account__storage *)

type azurerm_cognitive_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_account__timeouts *)

type azurerm_cognitive_account = {
  custom_question_answering_search_service_id : string option;
      [@option]
      (** custom_question_answering_search_service_id *)
  custom_question_answering_search_service_key : string option;
      [@option]
      (** custom_question_answering_search_service_key *)
  custom_subdomain_name : string option; [@option]
      (** custom_subdomain_name *)
  dynamic_throttling_enabled : bool option; [@option]
      (** dynamic_throttling_enabled *)
  fqdns : string list option; [@option]  (** fqdns *)
  kind : string;  (** kind *)
  local_auth_enabled : bool option; [@option]
      (** local_auth_enabled *)
  location : string;  (** location *)
  metrics_advisor_aad_client_id : string option; [@option]
      (** metrics_advisor_aad_client_id *)
  metrics_advisor_aad_tenant_id : string option; [@option]
      (** metrics_advisor_aad_tenant_id *)
  metrics_advisor_super_user_name : string option; [@option]
      (** metrics_advisor_super_user_name *)
  metrics_advisor_website_name : string option; [@option]
      (** metrics_advisor_website_name *)
  name : string;  (** name *)
  outbound_network_access_restricted : bool option; [@option]
      (** outbound_network_access_restricted *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  qna_runtime_endpoint : string option; [@option]
      (** qna_runtime_endpoint *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  customer_managed_key :
    azurerm_cognitive_account__customer_managed_key list;
  identity : azurerm_cognitive_account__identity list;
  network_acls : azurerm_cognitive_account__network_acls list;
  storage : azurerm_cognitive_account__storage list;
  timeouts : azurerm_cognitive_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cognitive_account *)

let azurerm_cognitive_account
    ?custom_question_answering_search_service_id
    ?custom_question_answering_search_service_key
    ?custom_subdomain_name ?dynamic_throttling_enabled ?fqdns
    ?local_auth_enabled ?metrics_advisor_aad_client_id
    ?metrics_advisor_aad_tenant_id ?metrics_advisor_super_user_name
    ?metrics_advisor_website_name ?outbound_network_access_restricted
    ?public_network_access_enabled ?qna_runtime_endpoint ?tags
    ?timeouts ~kind ~location ~name ~resource_group_name ~sku_name
    ~customer_managed_key ~identity ~network_acls ~storage
    __resource_id =
  let __resource_type = "azurerm_cognitive_account" in
  let __resource =
    {
      custom_question_answering_search_service_id;
      custom_question_answering_search_service_key;
      custom_subdomain_name;
      dynamic_throttling_enabled;
      fqdns;
      kind;
      local_auth_enabled;
      location;
      metrics_advisor_aad_client_id;
      metrics_advisor_aad_tenant_id;
      metrics_advisor_super_user_name;
      metrics_advisor_website_name;
      name;
      outbound_network_access_restricted;
      public_network_access_enabled;
      qna_runtime_endpoint;
      resource_group_name;
      sku_name;
      tags;
      customer_managed_key;
      identity;
      network_acls;
      storage;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cognitive_account __resource);
  ()
