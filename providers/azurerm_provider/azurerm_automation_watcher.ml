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

type t = {
  automation_account_id : string prop;
  description : string prop;
  etag : string prop;
  execution_frequency_in_seconds : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  script_name : string prop;
  script_parameters : (string * string) list prop;
  script_run_on : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

let azurerm_automation_watcher ?description ?etag ?id
    ?script_parameters ?tags ?timeouts ~automation_account_id
    ~execution_frequency_in_seconds ~location ~name ~script_name
    ~script_run_on __resource_id =
  let __resource_type = "azurerm_automation_watcher" in
  let __resource =
    ({
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
      : azurerm_automation_watcher)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_watcher __resource);
  let __resource_attributes =
    ({
       automation_account_id =
         Prop.computed __resource_type __resource_id
           "automation_account_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       etag = Prop.computed __resource_type __resource_id "etag";
       execution_frequency_in_seconds =
         Prop.computed __resource_type __resource_id
           "execution_frequency_in_seconds";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       script_name =
         Prop.computed __resource_type __resource_id "script_name";
       script_parameters =
         Prop.computed __resource_type __resource_id
           "script_parameters";
       script_run_on =
         Prop.computed __resource_type __resource_id "script_run_on";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
