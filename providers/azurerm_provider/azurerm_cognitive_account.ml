(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cognitive_account__customer_managed_key = {
  identity_client_id : string prop option; [@option]
      (** identity_client_id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_account__customer_managed_key *)

type azurerm_cognitive_account__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_account__identity *)

type azurerm_cognitive_account__network_acls__virtual_network_rules = {
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_account__network_acls__virtual_network_rules *)

type azurerm_cognitive_account__network_acls = {
  default_action : string prop;  (** default_action *)
  ip_rules : string prop list option; [@option]  (** ip_rules *)
  virtual_network_rules :
    azurerm_cognitive_account__network_acls__virtual_network_rules
    list;
}
[@@deriving yojson_of]
(** azurerm_cognitive_account__network_acls *)

type azurerm_cognitive_account__storage = {
  identity_client_id : string prop option; [@option]
      (** identity_client_id *)
  storage_account_id : string prop;  (** storage_account_id *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_account__storage *)

type azurerm_cognitive_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_account__timeouts *)

type azurerm_cognitive_account = {
  custom_question_answering_search_service_id : string prop option;
      [@option]
      (** custom_question_answering_search_service_id *)
  custom_question_answering_search_service_key : string prop option;
      [@option]
      (** custom_question_answering_search_service_key *)
  custom_subdomain_name : string prop option; [@option]
      (** custom_subdomain_name *)
  dynamic_throttling_enabled : bool prop option; [@option]
      (** dynamic_throttling_enabled *)
  fqdns : string prop list option; [@option]  (** fqdns *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;  (** kind *)
  local_auth_enabled : bool prop option; [@option]
      (** local_auth_enabled *)
  location : string prop;  (** location *)
  metrics_advisor_aad_client_id : string prop option; [@option]
      (** metrics_advisor_aad_client_id *)
  metrics_advisor_aad_tenant_id : string prop option; [@option]
      (** metrics_advisor_aad_tenant_id *)
  metrics_advisor_super_user_name : string prop option; [@option]
      (** metrics_advisor_super_user_name *)
  metrics_advisor_website_name : string prop option; [@option]
      (** metrics_advisor_website_name *)
  name : string prop;  (** name *)
  outbound_network_access_restricted : bool prop option; [@option]
      (** outbound_network_access_restricted *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  qna_runtime_endpoint : string prop option; [@option]
      (** qna_runtime_endpoint *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  customer_managed_key :
    azurerm_cognitive_account__customer_managed_key list;
  identity : azurerm_cognitive_account__identity list;
  network_acls : azurerm_cognitive_account__network_acls list;
  storage : azurerm_cognitive_account__storage list;
  timeouts : azurerm_cognitive_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cognitive_account *)

type t = {
  custom_question_answering_search_service_id : string prop;
  custom_question_answering_search_service_key : string prop;
  custom_subdomain_name : string prop;
  dynamic_throttling_enabled : bool prop;
  endpoint : string prop;
  fqdns : string list prop;
  id : string prop;
  kind : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  metrics_advisor_aad_client_id : string prop;
  metrics_advisor_aad_tenant_id : string prop;
  metrics_advisor_super_user_name : string prop;
  metrics_advisor_website_name : string prop;
  name : string prop;
  outbound_network_access_restricted : bool prop;
  primary_access_key : string prop;
  public_network_access_enabled : bool prop;
  qna_runtime_endpoint : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_cognitive_account
    ?custom_question_answering_search_service_id
    ?custom_question_answering_search_service_key
    ?custom_subdomain_name ?dynamic_throttling_enabled ?fqdns ?id
    ?local_auth_enabled ?metrics_advisor_aad_client_id
    ?metrics_advisor_aad_tenant_id ?metrics_advisor_super_user_name
    ?metrics_advisor_website_name ?outbound_network_access_restricted
    ?public_network_access_enabled ?qna_runtime_endpoint ?tags
    ?timeouts ~kind ~location ~name ~resource_group_name ~sku_name
    ~customer_managed_key ~identity ~network_acls ~storage
    __resource_id =
  let __resource_type = "azurerm_cognitive_account" in
  let __resource =
    ({
       custom_question_answering_search_service_id;
       custom_question_answering_search_service_key;
       custom_subdomain_name;
       dynamic_throttling_enabled;
       fqdns;
       id;
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
      : azurerm_cognitive_account)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cognitive_account __resource);
  let __resource_attributes =
    ({
       custom_question_answering_search_service_id =
         Prop.computed __resource_type __resource_id
           "custom_question_answering_search_service_id";
       custom_question_answering_search_service_key =
         Prop.computed __resource_type __resource_id
           "custom_question_answering_search_service_key";
       custom_subdomain_name =
         Prop.computed __resource_type __resource_id
           "custom_subdomain_name";
       dynamic_throttling_enabled =
         Prop.computed __resource_type __resource_id
           "dynamic_throttling_enabled";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       fqdns = Prop.computed __resource_type __resource_id "fqdns";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       local_auth_enabled =
         Prop.computed __resource_type __resource_id
           "local_auth_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       metrics_advisor_aad_client_id =
         Prop.computed __resource_type __resource_id
           "metrics_advisor_aad_client_id";
       metrics_advisor_aad_tenant_id =
         Prop.computed __resource_type __resource_id
           "metrics_advisor_aad_tenant_id";
       metrics_advisor_super_user_name =
         Prop.computed __resource_type __resource_id
           "metrics_advisor_super_user_name";
       metrics_advisor_website_name =
         Prop.computed __resource_type __resource_id
           "metrics_advisor_website_name";
       name = Prop.computed __resource_type __resource_id "name";
       outbound_network_access_restricted =
         Prop.computed __resource_type __resource_id
           "outbound_network_access_restricted";
       primary_access_key =
         Prop.computed __resource_type __resource_id
           "primary_access_key";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       qna_runtime_endpoint =
         Prop.computed __resource_type __resource_id
           "qna_runtime_endpoint";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_access_key =
         Prop.computed __resource_type __resource_id
           "secondary_access_key";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
