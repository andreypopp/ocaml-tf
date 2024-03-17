(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kusto_script__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kusto_script__timeouts *)

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
  timeouts : azurerm_kusto_script__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_script *)

let azurerm_kusto_script ?continue_on_errors_enabled
    ?force_an_update_when_value_changed ?id ?sas_token
    ?script_content ?url ?timeouts ~database_id ~name __resource_id =
  let __resource_type = "azurerm_kusto_script" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_script __resource);
  ()
