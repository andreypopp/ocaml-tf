(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_automation_watcher__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_watcher__timeouts *)

type azurerm_automation_watcher = {
  automation_account_id : string;  (** automation_account_id *)
  description : string option; [@option]  (** description *)
  etag : string option; [@option]  (** etag *)
  execution_frequency_in_seconds : float;
      (** execution_frequency_in_seconds *)
  location : string;  (** location *)
  name : string;  (** name *)
  script_name : string;  (** script_name *)
  script_parameters : (string * string) list option; [@option]
      (** script_parameters *)
  script_run_on : string;  (** script_run_on *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_automation_watcher__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_watcher *)

let azurerm_automation_watcher ?description ?etag ?script_parameters
    ?tags ?timeouts ~automation_account_id
    ~execution_frequency_in_seconds ~location ~name ~script_name
    ~script_run_on __resource_id =
  let __resource_type = "azurerm_automation_watcher" in
  let __resource =
    {
      automation_account_id;
      description;
      etag;
      execution_frequency_in_seconds;
      location;
      name;
      script_name;
      script_parameters;
      script_run_on;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_watcher __resource);
  ()
