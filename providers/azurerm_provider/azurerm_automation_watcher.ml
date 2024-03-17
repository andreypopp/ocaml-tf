(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_watcher__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_watcher__timeouts *)

type azurerm_automation_watcher = {
  automation_account_id : string prop;  (** automation_account_id *)
  description : string prop option; [@option]  (** description *)
  etag : string prop option; [@option]  (** etag *)
  execution_frequency_in_seconds : float prop;
      (** execution_frequency_in_seconds *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  script_name : string prop;  (** script_name *)
  script_parameters : (string * string prop) list option; [@option]
      (** script_parameters *)
  script_run_on : string prop;  (** script_run_on *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_automation_watcher__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_watcher *)

let azurerm_automation_watcher ?description ?etag ?id
    ?script_parameters ?tags ?timeouts ~automation_account_id
    ~execution_frequency_in_seconds ~location ~name ~script_name
    ~script_run_on __resource_id =
  let __resource_type = "azurerm_automation_watcher" in
  let __resource =
    {
      automation_account_id;
      description;
      etag;
      execution_frequency_in_seconds;
      id;
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
