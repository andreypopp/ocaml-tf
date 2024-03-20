(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_logic_app_integration_account_assembly = {
  assembly_name : string prop;  (** assembly_name *)
  assembly_version : string prop option; [@option]
      (** assembly_version *)
  content : string prop option; [@option]  (** content *)
  content_link_uri : string prop option; [@option]
      (** content_link_uri *)
  id : string prop option; [@option]  (** id *)
  integration_account_name : string prop;
      (** integration_account_name *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_assembly *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_integration_account_assembly ?assembly_version
    ?content ?content_link_uri ?id ?metadata ?timeouts ~assembly_name
    ~integration_account_name ~name ~resource_group_name () :
    azurerm_logic_app_integration_account_assembly =
  {
    assembly_name;
    assembly_version;
    content;
    content_link_uri;
    id;
    integration_account_name;
    metadata;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  assembly_name : string prop;
  assembly_version : string prop;
  content : string prop;
  content_link_uri : string prop;
  id : string prop;
  integration_account_name : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?assembly_version ?content ?content_link_uri ?id ?metadata
    ?timeouts ~assembly_name ~integration_account_name ~name
    ~resource_group_name __id =
  let __type = "azurerm_logic_app_integration_account_assembly" in
  let __attrs =
    ({
       assembly_name = Prop.computed __type __id "assembly_name";
       assembly_version =
         Prop.computed __type __id "assembly_version";
       content = Prop.computed __type __id "content";
       content_link_uri =
         Prop.computed __type __id "content_link_uri";
       id = Prop.computed __type __id "id";
       integration_account_name =
         Prop.computed __type __id "integration_account_name";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_integration_account_assembly
        (azurerm_logic_app_integration_account_assembly
           ?assembly_version ?content ?content_link_uri ?id ?metadata
           ?timeouts ~assembly_name ~integration_account_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?assembly_version ?content ?content_link_uri
    ?id ?metadata ?timeouts ~assembly_name ~integration_account_name
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?assembly_version ?content ?content_link_uri ?id ?metadata
      ?timeouts ~assembly_name ~integration_account_name ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
