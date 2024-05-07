(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type customer_managed_key = {
  identity_client_id : string prop option; [@option]
  key_vault_key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : customer_managed_key) -> ()

let yojson_of_customer_managed_key =
  (function
   | {
       identity_client_id = v_identity_client_id;
       key_vault_key_id = v_key_vault_key_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
       in
       let bnds =
         match v_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : customer_managed_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_customer_managed_key

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type network_acls__virtual_network_rules = {
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_acls__virtual_network_rules) -> ()

let yojson_of_network_acls__virtual_network_rules =
  (function
   | {
       ignore_missing_vnet_service_endpoint =
         v_ignore_missing_vnet_service_endpoint;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_ignore_missing_vnet_service_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_missing_vnet_service_endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_acls__virtual_network_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_acls__virtual_network_rules

[@@@deriving.end]

type network_acls = {
  default_action : string prop;
  ip_rules : string prop list option; [@option]
  virtual_network_rules : network_acls__virtual_network_rules list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_acls) -> ()

let yojson_of_network_acls =
  (function
   | {
       default_action = v_default_action;
       ip_rules = v_ip_rules;
       virtual_network_rules = v_virtual_network_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_network_acls__virtual_network_rules
             v_virtual_network_rules
         in
         ("virtual_network_rules", arg) :: bnds
       in
       let bnds =
         match v_ip_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_rules", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_action
         in
         ("default_action", arg) :: bnds
       in
       `Assoc bnds
    : network_acls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_acls

[@@@deriving.end]

type storage = {
  identity_client_id : string prop option; [@option]
  storage_account_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage) -> ()

let yojson_of_storage =
  (function
   | {
       identity_client_id = v_identity_client_id;
       storage_account_id = v_storage_account_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         match v_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_cognitive_account = {
  custom_question_answering_search_service_id : string prop option;
      [@option]
  custom_question_answering_search_service_key : string prop option;
      [@option]
  custom_subdomain_name : string prop option; [@option]
  dynamic_throttling_enabled : bool prop option; [@option]
  fqdns : string prop list option; [@option]
  id : string prop option; [@option]
  kind : string prop;
  local_auth_enabled : bool prop option; [@option]
  location : string prop;
  metrics_advisor_aad_client_id : string prop option; [@option]
  metrics_advisor_aad_tenant_id : string prop option; [@option]
  metrics_advisor_super_user_name : string prop option; [@option]
  metrics_advisor_website_name : string prop option; [@option]
  name : string prop;
  outbound_network_access_restricted : bool prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  qna_runtime_endpoint : string prop option; [@option]
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string prop) list option; [@option]
  customer_managed_key : customer_managed_key list;
  identity : identity list;
  network_acls : network_acls list;
  storage : storage list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cognitive_account) -> ()

let yojson_of_azurerm_cognitive_account =
  (function
   | {
       custom_question_answering_search_service_id =
         v_custom_question_answering_search_service_id;
       custom_question_answering_search_service_key =
         v_custom_question_answering_search_service_key;
       custom_subdomain_name = v_custom_subdomain_name;
       dynamic_throttling_enabled = v_dynamic_throttling_enabled;
       fqdns = v_fqdns;
       id = v_id;
       kind = v_kind;
       local_auth_enabled = v_local_auth_enabled;
       location = v_location;
       metrics_advisor_aad_client_id =
         v_metrics_advisor_aad_client_id;
       metrics_advisor_aad_tenant_id =
         v_metrics_advisor_aad_tenant_id;
       metrics_advisor_super_user_name =
         v_metrics_advisor_super_user_name;
       metrics_advisor_website_name = v_metrics_advisor_website_name;
       name = v_name;
       outbound_network_access_restricted =
         v_outbound_network_access_restricted;
       public_network_access_enabled =
         v_public_network_access_enabled;
       qna_runtime_endpoint = v_qna_runtime_endpoint;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       tags = v_tags;
       customer_managed_key = v_customer_managed_key;
       identity = v_identity;
       network_acls = v_network_acls;
       storage = v_storage;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_storage v_storage in
         ("storage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_acls v_network_acls
         in
         ("network_acls", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_customer_managed_key
             v_customer_managed_key
         in
         ("customer_managed_key", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_qna_runtime_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "qna_runtime_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outbound_network_access_restricted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "outbound_network_access_restricted", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metrics_advisor_website_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metrics_advisor_website_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metrics_advisor_super_user_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metrics_advisor_super_user_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metrics_advisor_aad_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metrics_advisor_aad_tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metrics_advisor_aad_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metrics_advisor_aad_client_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_local_auth_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_auth_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fqdns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "fqdns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dynamic_throttling_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dynamic_throttling_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_subdomain_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_subdomain_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_question_answering_search_service_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "custom_question_answering_search_service_key", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_custom_question_answering_search_service_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "custom_question_answering_search_service_id", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_cognitive_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cognitive_account

[@@@deriving.end]

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
    ?(customer_managed_key = []) ?(identity = [])
    ?(network_acls = []) ?(storage = []) ?timeouts ~kind ~location
    ~name ~resource_group_name ~sku_name () :
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
  tf_name : string;
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
    ?(customer_managed_key = []) ?(identity = [])
    ?(network_acls = []) ?(storage = []) ?timeouts ~kind ~location
    ~name ~resource_group_name ~sku_name __id =
  let __type = "azurerm_cognitive_account" in
  let __attrs =
    ({
       tf_name = __id;
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
           ~customer_managed_key ~identity ~network_acls ~storage
           ?timeouts ~kind ~location ~name ~resource_group_name
           ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_question_answering_search_service_id
    ?custom_question_answering_search_service_key
    ?custom_subdomain_name ?dynamic_throttling_enabled ?fqdns ?id
    ?local_auth_enabled ?metrics_advisor_aad_client_id
    ?metrics_advisor_aad_tenant_id ?metrics_advisor_super_user_name
    ?metrics_advisor_website_name ?outbound_network_access_restricted
    ?public_network_access_enabled ?qna_runtime_endpoint ?tags
    ?(customer_managed_key = []) ?(identity = [])
    ?(network_acls = []) ?(storage = []) ?timeouts ~kind ~location
    ~name ~resource_group_name ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?custom_question_answering_search_service_id
      ?custom_question_answering_search_service_key
      ?custom_subdomain_name ?dynamic_throttling_enabled ?fqdns ?id
      ?local_auth_enabled ?metrics_advisor_aad_client_id
      ?metrics_advisor_aad_tenant_id ?metrics_advisor_super_user_name
      ?metrics_advisor_website_name
      ?outbound_network_access_restricted
      ?public_network_access_enabled ?qna_runtime_endpoint ?tags
      ~customer_managed_key ~identity ~network_acls ~storage
      ?timeouts ~kind ~location ~name ~resource_group_name ~sku_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
