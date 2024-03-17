(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_dsc_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_dsc_configuration__timeouts *)

type azurerm_automation_dsc_configuration = {
  automation_account_name : string prop;
      (** automation_account_name *)
  content_embedded : string prop;  (** content_embedded *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  log_verbose : bool prop option; [@option]  (** log_verbose *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
