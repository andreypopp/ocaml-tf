(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type security = {
  refresh_token : string prop option; [@option]  (** refresh_token *)
  token : string prop;  (** token *)
  token_type : string prop;  (** token_type *)
}
[@@deriving yojson_of]
(** security *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_automation_source_control = {
  automatic_sync : bool prop option; [@option]  (** automatic_sync *)
  automation_account_id : string prop;  (** automation_account_id *)
  branch : string prop option; [@option]  (** branch *)
  description : string prop option; [@option]  (** description *)
  folder_path : string prop;  (** folder_path *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  publish_runbook_enabled : bool prop option; [@option]
      (** publish_runbook_enabled *)
  repository_url : string prop;  (** repository_url *)
  source_control_type : string prop;  (** source_control_type *)
  security : security list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_source_control *)

let security ?refresh_token ~token ~token_type () : security =
  { refresh_token; token; token_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_source_control ?automatic_sync ?branch
    ?description ?id ?publish_runbook_enabled ?timeouts
    ~automation_account_id ~folder_path ~name ~repository_url
    ~source_control_type ~security () :
    azurerm_automation_source_control =
  {
    automatic_sync;
    automation_account_id;
    branch;
    description;
    folder_path;
    id;
    name;
    publish_runbook_enabled;
    repository_url;
    source_control_type;
    security;
    timeouts;
  }

type t = {
  automatic_sync : bool prop;
  automation_account_id : string prop;
  branch : string prop;
  description : string prop;
  folder_path : string prop;
  id : string prop;
  name : string prop;
  publish_runbook_enabled : bool prop;
  repository_url : string prop;
  source_control_type : string prop;
}

let make ?automatic_sync ?branch ?description ?id
    ?publish_runbook_enabled ?timeouts ~automation_account_id
    ~folder_path ~name ~repository_url ~source_control_type ~security
    __id =
  let __type = "azurerm_automation_source_control" in
  let __attrs =
    ({
       automatic_sync = Prop.computed __type __id "automatic_sync";
       automation_account_id =
         Prop.computed __type __id "automation_account_id";
       branch = Prop.computed __type __id "branch";
       description = Prop.computed __type __id "description";
       folder_path = Prop.computed __type __id "folder_path";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       publish_runbook_enabled =
         Prop.computed __type __id "publish_runbook_enabled";
       repository_url = Prop.computed __type __id "repository_url";
       source_control_type =
         Prop.computed __type __id "source_control_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_source_control
        (azurerm_automation_source_control ?automatic_sync ?branch
           ?description ?id ?publish_runbook_enabled ?timeouts
           ~automation_account_id ~folder_path ~name ~repository_url
           ~source_control_type ~security ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic_sync ?branch ?description ?id
    ?publish_runbook_enabled ?timeouts ~automation_account_id
    ~folder_path ~name ~repository_url ~source_control_type ~security
    __id =
  let (r : _ Tf_core.resource) =
    make ?automatic_sync ?branch ?description ?id
      ?publish_runbook_enabled ?timeouts ~automation_account_id
      ~folder_path ~name ~repository_url ~source_control_type
      ~security __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
