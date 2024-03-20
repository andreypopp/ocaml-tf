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

type azurerm_kusto_script = {
  continue_on_errors_enabled : bool prop option; [@option]
      (** continue_on_errors_enabled *)
  database_id : string prop;  (** database_id *)
  force_an_update_when_value_changed : string prop option; [@option]
      (** force_an_update_when_value_changed *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  sas_token : string prop option; [@option]  (** sas_token *)
  script_content : string prop option; [@option]
      (** script_content *)
  url : string prop option; [@option]  (** url *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_script *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kusto_script ?continue_on_errors_enabled
    ?force_an_update_when_value_changed ?id ?sas_token
    ?script_content ?url ?timeouts ~database_id ~name () :
    azurerm_kusto_script =
  {
    continue_on_errors_enabled;
    database_id;
    force_an_update_when_value_changed;
    id;
    name;
    sas_token;
    script_content;
    url;
    timeouts;
  }

type t = {
  continue_on_errors_enabled : bool prop;
  database_id : string prop;
  force_an_update_when_value_changed : string prop;
  id : string prop;
  name : string prop;
  sas_token : string prop;
  script_content : string prop;
  url : string prop;
}

let make ?continue_on_errors_enabled
    ?force_an_update_when_value_changed ?id ?sas_token
    ?script_content ?url ?timeouts ~database_id ~name __id =
  let __type = "azurerm_kusto_script" in
  let __attrs =
    ({
       continue_on_errors_enabled =
         Prop.computed __type __id "continue_on_errors_enabled";
       database_id = Prop.computed __type __id "database_id";
       force_an_update_when_value_changed =
         Prop.computed __type __id
           "force_an_update_when_value_changed";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       sas_token = Prop.computed __type __id "sas_token";
       script_content = Prop.computed __type __id "script_content";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_script
        (azurerm_kusto_script ?continue_on_errors_enabled
           ?force_an_update_when_value_changed ?id ?sas_token
           ?script_content ?url ?timeouts ~database_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?continue_on_errors_enabled
    ?force_an_update_when_value_changed ?id ?sas_token
    ?script_content ?url ?timeouts ~database_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?continue_on_errors_enabled
      ?force_an_update_when_value_changed ?id ?sas_token
      ?script_content ?url ?timeouts ~database_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
