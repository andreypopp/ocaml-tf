(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication = {
  audience : string prop;  (** audience *)
  authority : string prop;  (** authority *)
  smart_proxy_enabled : bool prop option; [@option]
      (** smart_proxy_enabled *)
}
[@@deriving yojson_of]
(** authentication *)

type cors = {
  allowed_headers : string prop list;  (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  credentials_allowed : bool prop option; [@option]
      (** credentials_allowed *)
  max_age_in_seconds : float prop option; [@option]
      (** max_age_in_seconds *)
}
[@@deriving yojson_of]
(** cors *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type oci_artifact = {
  digest : string prop option; [@option]  (** digest *)
  image_name : string prop option; [@option]  (** image_name *)
  login_server : string prop;  (** login_server *)
}
[@@deriving yojson_of]
(** oci_artifact *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_healthcare_fhir_service = {
  access_policy_object_ids : string prop list option; [@option]
      (** access_policy_object_ids *)
  configuration_export_storage_account_name : string prop option;
      [@option]
      (** configuration_export_storage_account_name *)
  container_registry_login_server_url : string prop list option;
      [@option]
      (** container_registry_login_server_url *)
  id : string prop option; [@option]  (** id *)
  kind : string prop option; [@option]  (** kind *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workspace_id : string prop;  (** workspace_id *)
  authentication : authentication list;
  cors : cors list;
  identity : identity list;
  oci_artifact : oci_artifact list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_fhir_service *)

let authentication ?smart_proxy_enabled ~audience ~authority () :
    authentication =
  { audience; authority; smart_proxy_enabled }

let cors ?credentials_allowed ?max_age_in_seconds ~allowed_headers
    ~allowed_methods ~allowed_origins () : cors =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    credentials_allowed;
    max_age_in_seconds;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let oci_artifact ?digest ?image_name ~login_server () : oci_artifact
    =
  { digest; image_name; login_server }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_healthcare_fhir_service ?access_policy_object_ids
    ?configuration_export_storage_account_name
    ?container_registry_login_server_url ?id ?kind ?tags ?timeouts
    ~location ~name ~resource_group_name ~workspace_id
    ~authentication ~cors ~identity ~oci_artifact () :
    azurerm_healthcare_fhir_service =
  {
    access_policy_object_ids;
    configuration_export_storage_account_name;
    container_registry_login_server_url;
    id;
    kind;
    location;
    name;
    resource_group_name;
    tags;
    workspace_id;
    authentication;
    cors;
    identity;
    oci_artifact;
    timeouts;
  }

type t = {
  access_policy_object_ids : string list prop;
  configuration_export_storage_account_name : string prop;
  container_registry_login_server_url : string list prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

let make ?access_policy_object_ids
    ?configuration_export_storage_account_name
    ?container_registry_login_server_url ?id ?kind ?tags ?timeouts
    ~location ~name ~resource_group_name ~workspace_id
    ~authentication ~cors ~identity ~oci_artifact __id =
  let __type = "azurerm_healthcare_fhir_service" in
  let __attrs =
    ({
       access_policy_object_ids =
         Prop.computed __type __id "access_policy_object_ids";
       configuration_export_storage_account_name =
         Prop.computed __type __id
           "configuration_export_storage_account_name";
       container_registry_login_server_url =
         Prop.computed __type __id
           "container_registry_login_server_url";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_healthcare_fhir_service
        (azurerm_healthcare_fhir_service ?access_policy_object_ids
           ?configuration_export_storage_account_name
           ?container_registry_login_server_url ?id ?kind ?tags
           ?timeouts ~location ~name ~resource_group_name
           ~workspace_id ~authentication ~cors ~identity
           ~oci_artifact ());
    attrs = __attrs;
  }

let register ?tf_module ?access_policy_object_ids
    ?configuration_export_storage_account_name
    ?container_registry_login_server_url ?id ?kind ?tags ?timeouts
    ~location ~name ~resource_group_name ~workspace_id
    ~authentication ~cors ~identity ~oci_artifact __id =
  let (r : _ Tf_core.resource) =
    make ?access_policy_object_ids
      ?configuration_export_storage_account_name
      ?container_registry_login_server_url ?id ?kind ?tags ?timeouts
      ~location ~name ~resource_group_name ~workspace_id
      ~authentication ~cors ~identity ~oci_artifact __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
