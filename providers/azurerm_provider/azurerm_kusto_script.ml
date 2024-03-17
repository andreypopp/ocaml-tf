(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_kusto_script__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kusto_script__timeouts *)

type azurerm_kusto_script = {
  continue_on_errors_enabled : bool option; [@option]
      (** continue_on_errors_enabled *)
  database_id : string;  (** database_id *)
  name : string;  (** name *)
  sas_token : string option; [@option]  (** sas_token *)
  script_content : string option; [@option]  (** script_content *)
  url : string option; [@option]  (** url *)
  timeouts : azurerm_kusto_script__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_script *)

let azurerm_kusto_script ?continue_on_errors_enabled ?sas_token
    ?script_content ?url ?timeouts ~database_id ~name __resource_id =
  let __resource_type = "azurerm_kusto_script" in
  let __resource =
    {
      continue_on_errors_enabled;
      database_id;
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
