(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication_configuration = {
  audience : string prop option; [@option]  (** audience *)
  authority : string prop option; [@option]  (** authority *)
  smart_proxy_enabled : bool prop option; [@option]
      (** smart_proxy_enabled *)
}
[@@deriving yojson_of]
(** authentication_configuration *)

type cors_configuration = {
  allow_credentials : bool prop option; [@option]
      (** allow_credentials *)
  allowed_headers : string prop list option; [@option]
      (** allowed_headers *)
  allowed_methods : string prop list option; [@option]
      (** allowed_methods *)
  allowed_origins : string prop list option; [@option]
      (** allowed_origins *)
  max_age_in_seconds : float prop option; [@option]
      (** max_age_in_seconds *)
}
[@@deriving yojson_of]
(** cors_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_healthcare_service = {
  access_policy_object_ids : string prop list option; [@option]
      (** access_policy_object_ids *)
  cosmosdb_key_vault_key_versionless_id : string prop option;
      [@option]
      (** cosmosdb_key_vault_key_versionless_id *)
  cosmosdb_throughput : float prop option; [@option]
      (** cosmosdb_throughput *)
  id : string prop option; [@option]  (** id *)
  kind : string prop option; [@option]  (** kind *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  authentication_configuration : authentication_configuration list;
  cors_configuration : cors_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_service *)

let authentication_configuration ?audience ?authority
    ?smart_proxy_enabled () : authentication_configuration =
  { audience; authority; smart_proxy_enabled }

let cors_configuration ?allow_credentials ?allowed_headers
    ?allowed_methods ?allowed_origins ?max_age_in_seconds () :
    cors_configuration =
  {
    allow_credentials;
    allowed_headers;
    allowed_methods;
    allowed_origins;
    max_age_in_seconds;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_healthcare_service ?access_policy_object_ids
    ?cosmosdb_key_vault_key_versionless_id ?cosmosdb_throughput ?id
    ?kind ?public_network_access_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~authentication_configuration
    ~cors_configuration () : azurerm_healthcare_service =
  {
    access_policy_object_ids;
    cosmosdb_key_vault_key_versionless_id;
    cosmosdb_throughput;
    id;
    kind;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    tags;
    authentication_configuration;
    cors_configuration;
    timeouts;
  }

type t = {
  access_policy_object_ids : string list prop;
  cosmosdb_key_vault_key_versionless_id : string prop;
  cosmosdb_throughput : float prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?access_policy_object_ids
    ?cosmosdb_key_vault_key_versionless_id ?cosmosdb_throughput ?id
    ?kind ?public_network_access_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~authentication_configuration
    ~cors_configuration __id =
  let __type = "azurerm_healthcare_service" in
  let __attrs =
    ({
       access_policy_object_ids =
         Prop.computed __type __id "access_policy_object_ids";
       cosmosdb_key_vault_key_versionless_id =
         Prop.computed __type __id
           "cosmosdb_key_vault_key_versionless_id";
       cosmosdb_throughput =
         Prop.computed __type __id "cosmosdb_throughput";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_healthcare_service
        (azurerm_healthcare_service ?access_policy_object_ids
           ?cosmosdb_key_vault_key_versionless_id
           ?cosmosdb_throughput ?id ?kind
           ?public_network_access_enabled ?tags ?timeouts ~location
           ~name ~resource_group_name ~authentication_configuration
           ~cors_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?access_policy_object_ids
    ?cosmosdb_key_vault_key_versionless_id ?cosmosdb_throughput ?id
    ?kind ?public_network_access_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~authentication_configuration
    ~cors_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?access_policy_object_ids
      ?cosmosdb_key_vault_key_versionless_id ?cosmosdb_throughput ?id
      ?kind ?public_network_access_enabled ?tags ?timeouts ~location
      ~name ~resource_group_name ~authentication_configuration
      ~cors_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
