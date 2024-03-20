(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type blob_storage__managed_identity = {
  client_id : string prop;  (** client_id *)
}
[@@deriving yojson_of]
(** blob_storage__managed_identity *)

type blob_storage__service_principal = {
  client_certificate_base64 : string prop option; [@option]
      (** client_certificate_base64 *)
  client_certificate_password : string prop option; [@option]
      (** client_certificate_password *)
  client_certificate_send_chain : bool prop option; [@option]
      (** client_certificate_send_chain *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop option; [@option]  (** client_secret *)
  tenant_id : string prop;  (** tenant_id *)
}
[@@deriving yojson_of]
(** blob_storage__service_principal *)

type blob_storage = {
  account_key : string prop option; [@option]  (** account_key *)
  container_id : string prop;  (** container_id *)
  local_auth_reference : string prop option; [@option]
      (** local_auth_reference *)
  sas_token : string prop option; [@option]  (** sas_token *)
  sync_interval_in_seconds : float prop option; [@option]
      (** sync_interval_in_seconds *)
  timeout_in_seconds : float prop option; [@option]
      (** timeout_in_seconds *)
  managed_identity : blob_storage__managed_identity list;
  service_principal : blob_storage__service_principal list;
}
[@@deriving yojson_of]
(** blob_storage *)

type bucket = {
  access_key : string prop option; [@option]  (** access_key *)
  bucket_name : string prop;  (** bucket_name *)
  local_auth_reference : string prop option; [@option]
      (** local_auth_reference *)
  secret_key_base64 : string prop option; [@option]
      (** secret_key_base64 *)
  sync_interval_in_seconds : float prop option; [@option]
      (** sync_interval_in_seconds *)
  timeout_in_seconds : float prop option; [@option]
      (** timeout_in_seconds *)
  tls_enabled : bool prop option; [@option]  (** tls_enabled *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** bucket *)

type git_repository = {
  https_ca_cert_base64 : string prop option; [@option]
      (** https_ca_cert_base64 *)
  https_key_base64 : string prop option; [@option]
      (** https_key_base64 *)
  https_user : string prop option; [@option]  (** https_user *)
  local_auth_reference : string prop option; [@option]
      (** local_auth_reference *)
  reference_type : string prop;  (** reference_type *)
  reference_value : string prop;  (** reference_value *)
  ssh_known_hosts_base64 : string prop option; [@option]
      (** ssh_known_hosts_base64 *)
  ssh_private_key_base64 : string prop option; [@option]
      (** ssh_private_key_base64 *)
  sync_interval_in_seconds : float prop option; [@option]
      (** sync_interval_in_seconds *)
  timeout_in_seconds : float prop option; [@option]
      (** timeout_in_seconds *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** git_repository *)

type kustomizations = {
  depends_on : string prop list option; [@option]  (** depends_on *)
  garbage_collection_enabled : bool prop option; [@option]
      (** garbage_collection_enabled *)
  name : string prop;  (** name *)
  path : string prop option; [@option]  (** path *)
  recreating_enabled : bool prop option; [@option]
      (** recreating_enabled *)
  retry_interval_in_seconds : float prop option; [@option]
      (** retry_interval_in_seconds *)
  sync_interval_in_seconds : float prop option; [@option]
      (** sync_interval_in_seconds *)
  timeout_in_seconds : float prop option; [@option]
      (** timeout_in_seconds *)
}
[@@deriving yojson_of]
(** kustomizations *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_kubernetes_flux_configuration = {
  cluster_id : string prop;  (** cluster_id *)
  continuous_reconciliation_enabled : bool prop option; [@option]
      (** continuous_reconciliation_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
  scope : string prop option; [@option]  (** scope *)
  blob_storage : blob_storage list;
  bucket : bucket list;
  git_repository : git_repository list;
  kustomizations : kustomizations list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_flux_configuration *)

let blob_storage__managed_identity ~client_id () :
    blob_storage__managed_identity =
  { client_id }

let blob_storage__service_principal ?client_certificate_base64
    ?client_certificate_password ?client_certificate_send_chain
    ?client_secret ~client_id ~tenant_id () :
    blob_storage__service_principal =
  {
    client_certificate_base64;
    client_certificate_password;
    client_certificate_send_chain;
    client_id;
    client_secret;
    tenant_id;
  }

let blob_storage ?account_key ?local_auth_reference ?sas_token
    ?sync_interval_in_seconds ?timeout_in_seconds ~container_id
    ~managed_identity ~service_principal () : blob_storage =
  {
    account_key;
    container_id;
    local_auth_reference;
    sas_token;
    sync_interval_in_seconds;
    timeout_in_seconds;
    managed_identity;
    service_principal;
  }

let bucket ?access_key ?local_auth_reference ?secret_key_base64
    ?sync_interval_in_seconds ?timeout_in_seconds ?tls_enabled
    ~bucket_name ~url () : bucket =
  {
    access_key;
    bucket_name;
    local_auth_reference;
    secret_key_base64;
    sync_interval_in_seconds;
    timeout_in_seconds;
    tls_enabled;
    url;
  }

let git_repository ?https_ca_cert_base64 ?https_key_base64
    ?https_user ?local_auth_reference ?ssh_known_hosts_base64
    ?ssh_private_key_base64 ?sync_interval_in_seconds
    ?timeout_in_seconds ~reference_type ~reference_value ~url () :
    git_repository =
  {
    https_ca_cert_base64;
    https_key_base64;
    https_user;
    local_auth_reference;
    reference_type;
    reference_value;
    ssh_known_hosts_base64;
    ssh_private_key_base64;
    sync_interval_in_seconds;
    timeout_in_seconds;
    url;
  }

let kustomizations ?depends_on ?garbage_collection_enabled ?path
    ?recreating_enabled ?retry_interval_in_seconds
    ?sync_interval_in_seconds ?timeout_in_seconds ~name () :
    kustomizations =
  {
    depends_on;
    garbage_collection_enabled;
    name;
    path;
    recreating_enabled;
    retry_interval_in_seconds;
    sync_interval_in_seconds;
    timeout_in_seconds;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kubernetes_flux_configuration
    ?continuous_reconciliation_enabled ?id ?scope ?timeouts
    ~cluster_id ~name ~namespace ~blob_storage ~bucket
    ~git_repository ~kustomizations () :
    azurerm_kubernetes_flux_configuration =
  {
    cluster_id;
    continuous_reconciliation_enabled;
    id;
    name;
    namespace;
    scope;
    blob_storage;
    bucket;
    git_repository;
    kustomizations;
    timeouts;
  }

type t = {
  cluster_id : string prop;
  continuous_reconciliation_enabled : bool prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  scope : string prop;
}

let make ?continuous_reconciliation_enabled ?id ?scope ?timeouts
    ~cluster_id ~name ~namespace ~blob_storage ~bucket
    ~git_repository ~kustomizations __id =
  let __type = "azurerm_kubernetes_flux_configuration" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       continuous_reconciliation_enabled =
         Prop.computed __type __id
           "continuous_reconciliation_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_flux_configuration
        (azurerm_kubernetes_flux_configuration
           ?continuous_reconciliation_enabled ?id ?scope ?timeouts
           ~cluster_id ~name ~namespace ~blob_storage ~bucket
           ~git_repository ~kustomizations ());
    attrs = __attrs;
  }

let register ?tf_module ?continuous_reconciliation_enabled ?id ?scope
    ?timeouts ~cluster_id ~name ~namespace ~blob_storage ~bucket
    ~git_repository ~kustomizations __id =
  let (r : _ Tf_core.resource) =
    make ?continuous_reconciliation_enabled ?id ?scope ?timeouts
      ~cluster_id ~name ~namespace ~blob_storage ~bucket
      ~git_repository ~kustomizations __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
