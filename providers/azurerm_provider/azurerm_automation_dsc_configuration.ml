(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_dsc_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_dsc_configuration__timeouts *)

type azurerm_automation_dsc_configuration = {
  automation_account_name : string;  (** automation_account_name *)
  content_embedded : string;  (** content_embedded *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  log_verbose : bool option; [@option]  (** log_verbose *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_automation_dsc_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_dsc_configuration *)

let azurerm_automation_dsc_configuration ?description ?id
    ?log_verbose ?tags ?timeouts ~automation_account_name
    ~content_embedded ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_automation_dsc_configuration" in
  let __resource =
    {
      automation_account_name;
      content_embedded;
      description;
      id;
      location;
      log_verbose;
      name;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_dsc_configuration __resource);
  ()
