(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type customer_managed_key = {
  identity_client_id : string prop option; [@option]
      (** identity_client_id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
}
[@@deriving yojson_of]
(** customer_managed_key *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type network_acls__virtual_network_rules = {
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** network_acls__virtual_network_rules *)

type network_acls = {
  default_action : string prop;  (** default_action *)
  ip_rules : string prop list option; [@option]  (** ip_rules *)
  virtual_network_rules : network_acls__virtual_network_rules list;
}
[@@deriving yojson_of]
(** network_acls *)

type storage = {
  identity_client_id : string prop option; [@option]
      (** identity_client_id *)
  storage_account_id : string prop;  (** storage_account_id *)
}
[@@deriving yojson_of]
(** storage *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  customer_managed_key : customer_managed_key list;
  identity : identity list;
  network_acls : network_acls list;
  storage : storage list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cognitive_account *)

let customer_managed_key ?identity_client_id ~key_vault_key_id () :
    customer_managed_key =
  { identity_client_id; key_vault_key_id }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let network_acls__virtual_network_rules
    ?ignore_missing_vnet_service_endpoint ~subnet_id () :
    network_acls__virtual_network_rules =
  { ignore_missing_vnet_service_endpoint; subnet_id }

let network_acls ?ip_rules ~default_action ~virtual_network_rules ()
    : network_acls =
  { default_action; ip_rules; virtual_network_rules }

let storage ?identity_client_id ~storage_account_id () : storage =
  { identity_client_id; storage_account_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cognitive_account
    ?custom_question_answering_search_service_id
    ?custom_question_answering_search_service_key
    ?custom_subdomain_name ?dynamic_throttling_enabled ?fqdns ?id
    ?local_auth_enabled ?metrics_advisor_aad_client_id
    ?metrics_advisor_aad_tenant_id ?metrics_advisor_super_user_name
    ?metrics_advisor_website_name ?outbound_network_access_restricted
    ?public_network_access_enabled ?qna_runtime_endpoint ?tags
    ?timeouts ~kind ~location ~name ~resource_group_name ~sku_name
    ~customer_managed_key ~identity ~network_acls ~storage () :
    azurerm_cognitive_account =
  {
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

let make ?custom_question_answering_search_service_id
    ?custom_question_answering_search_service_key
    ?custom_subdomain_name ?dynamic_throttling_enabled ?fqdns ?id
    ?local_auth_enabled ?metrics_advisor_aad_client_id
    ?metrics_advisor_aad_tenant_id ?metrics_advisor_super_user_name
    ?metrics_advisor_website_name ?outbound_network_access_restricted
    ?public_network_access_enabled ?qna_runtime_endpoint ?tags
    ?timeouts ~kind ~location ~name ~resource_group_name ~sku_name
    ~customer_managed_key ~identity ~network_acls ~storage __id =
  let __type = "azurerm_cognitive_account" in
  let __attrs =
    ({
       custom_question_answering_search_service_id =
         Prop.computed __type __id
           "custom_question_answering_search_service_id";
       custom_question_answering_search_service_key =
         Prop.computed __type __id
           "custom_question_answering_search_service_key";
       custom_subdomain_name =
         Prop.computed __type __id "custom_subdomain_name";
       dynamic_throttling_enabled =
         Prop.computed __type __id "dynamic_throttling_enabled";
       endpoint = Prop.computed __type __id "endpoint";
       fqdns = Prop.computed __type __id "fqdns";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       local_auth_enabled =
         Prop.computed __type __id "local_auth_enabled";
       location = Prop.computed __type __id "location";
       metrics_advisor_aad_client_id =
         Prop.computed __type __id "metrics_advisor_aad_client_id";
       metrics_advisor_aad_tenant_id =
         Prop.computed __type __id "metrics_advisor_aad_tenant_id";
       metrics_advisor_super_user_name =
         Prop.computed __type __id "metrics_advisor_super_user_name";
       metrics_advisor_website_name =
         Prop.computed __type __id "metrics_advisor_website_name";
       name = Prop.computed __type __id "name";
       outbound_network_access_restricted =
         Prop.computed __type __id
           "outbound_network_access_restricted";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       qna_runtime_endpoint =
         Prop.computed __type __id "qna_runtime_endpoint";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cognitive_account
        (azurerm_cognitive_account
           ?custom_question_answering_search_service_id
           ?custom_question_answering_search_service_key
           ?custom_subdomain_name ?dynamic_throttling_enabled ?fqdns
           ?id ?local_auth_enabled ?metrics_advisor_aad_client_id
           ?metrics_advisor_aad_tenant_id
           ?metrics_advisor_super_user_name
           ?metrics_advisor_website_name
           ?outbound_network_access_restricted
           ?public_network_access_enabled ?qna_runtime_endpoint ?tags
           ?timeouts ~kind ~location ~name ~resource_group_name
           ~sku_name ~customer_managed_key ~identity ~network_acls
           ~storage ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_question_answering_search_service_id
    ?custom_question_answering_search_service_key
    ?custom_subdomain_name ?dynamic_throttling_enabled ?fqdns ?id
    ?local_auth_enabled ?metrics_advisor_aad_client_id
    ?metrics_advisor_aad_tenant_id ?metrics_advisor_super_user_name
    ?metrics_advisor_website_name ?outbound_network_access_restricted
    ?public_network_access_enabled ?qna_runtime_endpoint ?tags
    ?timeouts ~kind ~location ~name ~resource_group_name ~sku_name
    ~customer_managed_key ~identity ~network_acls ~storage __id =
  let (r : _ Tf_core.resource) =
    make ?custom_question_answering_search_service_id
      ?custom_question_answering_search_service_key
      ?custom_subdomain_name ?dynamic_throttling_enabled ?fqdns ?id
      ?local_auth_enabled ?metrics_advisor_aad_client_id
      ?metrics_advisor_aad_tenant_id ?metrics_advisor_super_user_name
      ?metrics_advisor_website_name
      ?outbound_network_access_restricted
      ?public_network_access_enabled ?qna_runtime_endpoint ?tags
      ?timeouts ~kind ~location ~name ~resource_group_name ~sku_name
      ~customer_managed_key ~identity ~network_acls ~storage __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
