(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type container = {
  container_group_name : string prop option; [@option]
      (** container_group_name *)
}
[@@deriving yojson_of]
(** container *)

type environment_variable = {
  name : string prop;  (** name *)
  secure_value : string prop option; [@option]  (** secure_value *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** environment_variable *)

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type storage_account = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** storage_account *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_resource_deployment_script_azure_power_shell = {
  cleanup_preference : string prop option; [@option]
      (** cleanup_preference *)
  command_line : string prop option; [@option]  (** command_line *)
  force_update_tag : string prop option; [@option]
      (** force_update_tag *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  primary_script_uri : string prop option; [@option]
      (** primary_script_uri *)
  resource_group_name : string prop;  (** resource_group_name *)
  retention_interval : string prop;  (** retention_interval *)
  script_content : string prop option; [@option]
      (** script_content *)
  supporting_script_uris : string prop list option; [@option]
      (** supporting_script_uris *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeout : string prop option; [@option]  (** timeout *)
  version : string prop;  (** version *)
  container : container list;
  environment_variable : environment_variable list;
  identity : identity list;
  storage_account : storage_account list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_deployment_script_azure_power_shell *)

let container ?container_group_name () : container =
  { container_group_name }

let environment_variable ?secure_value ?value ~name () :
    environment_variable =
  { name; secure_value; value }

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let storage_account ~key ~name () : storage_account = { key; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_resource_deployment_script_azure_power_shell
    ?cleanup_preference ?command_line ?force_update_tag ?id
    ?primary_script_uri ?script_content ?supporting_script_uris ?tags
    ?timeout ?timeouts ~location ~name ~resource_group_name
    ~retention_interval ~version ~container ~environment_variable
    ~identity ~storage_account () :
    azurerm_resource_deployment_script_azure_power_shell =
  {
    cleanup_preference;
    command_line;
    force_update_tag;
    id;
    location;
    name;
    primary_script_uri;
    resource_group_name;
    retention_interval;
    script_content;
    supporting_script_uris;
    tags;
    timeout;
    version;
    container;
    environment_variable;
    identity;
    storage_account;
    timeouts;
  }

type t = {
  cleanup_preference : string prop;
  command_line : string prop;
  force_update_tag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outputs : string prop;
  primary_script_uri : string prop;
  resource_group_name : string prop;
  retention_interval : string prop;
  script_content : string prop;
  supporting_script_uris : string list prop;
  tags : (string * string) list prop;
  timeout : string prop;
  version : string prop;
}

let make ?cleanup_preference ?command_line ?force_update_tag ?id
    ?primary_script_uri ?script_content ?supporting_script_uris ?tags
    ?timeout ?timeouts ~location ~name ~resource_group_name
    ~retention_interval ~version ~container ~environment_variable
    ~identity ~storage_account __id =
  let __type =
    "azurerm_resource_deployment_script_azure_power_shell"
  in
  let __attrs =
    ({
       cleanup_preference =
         Prop.computed __type __id "cleanup_preference";
       command_line = Prop.computed __type __id "command_line";
       force_update_tag =
         Prop.computed __type __id "force_update_tag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outputs = Prop.computed __type __id "outputs";
       primary_script_uri =
         Prop.computed __type __id "primary_script_uri";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       retention_interval =
         Prop.computed __type __id "retention_interval";
       script_content = Prop.computed __type __id "script_content";
       supporting_script_uris =
         Prop.computed __type __id "supporting_script_uris";
       tags = Prop.computed __type __id "tags";
       timeout = Prop.computed __type __id "timeout";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_resource_deployment_script_azure_power_shell
        (azurerm_resource_deployment_script_azure_power_shell
           ?cleanup_preference ?command_line ?force_update_tag ?id
           ?primary_script_uri ?script_content
           ?supporting_script_uris ?tags ?timeout ?timeouts ~location
           ~name ~resource_group_name ~retention_interval ~version
           ~container ~environment_variable ~identity
           ~storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?cleanup_preference ?command_line
    ?force_update_tag ?id ?primary_script_uri ?script_content
    ?supporting_script_uris ?tags ?timeout ?timeouts ~location ~name
    ~resource_group_name ~retention_interval ~version ~container
    ~environment_variable ~identity ~storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?cleanup_preference ?command_line ?force_update_tag ?id
      ?primary_script_uri ?script_content ?supporting_script_uris
      ?tags ?timeout ?timeouts ~location ~name ~resource_group_name
      ~retention_interval ~version ~container ~environment_variable
      ~identity ~storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
