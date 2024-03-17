(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_arc_machine_extension__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_arc_machine_extension__timeouts *)

type azurerm_arc_machine_extension = {
  arc_machine_id : string;  (** arc_machine_id *)
  automatic_upgrade_enabled : bool option; [@option]
      (** automatic_upgrade_enabled *)
  force_update_tag : string option; [@option]
      (** force_update_tag *)
  location : string;  (** location *)
  name : string;  (** name *)
  protected_settings : string option; [@option]
      (** protected_settings *)
  publisher : string;  (** publisher *)
  settings : string option; [@option]  (** settings *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  type_handler_version : string option; [@option]
      (** type_handler_version *)
  timeouts : azurerm_arc_machine_extension__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_arc_machine_extension *)

let azurerm_arc_machine_extension ?automatic_upgrade_enabled
    ?force_update_tag ?protected_settings ?settings ?tags
    ?type_handler_version ?timeouts ~arc_machine_id ~location ~name
    ~publisher ~type_ __resource_id =
  let __resource_type = "azurerm_arc_machine_extension" in
  let __resource =
    {
      arc_machine_id;
      automatic_upgrade_enabled;
      force_update_tag;
      location;
      name;
      protected_settings;
      publisher;
      settings;
      tags;
      type_;
      type_handler_version;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_arc_machine_extension __resource);
  ()
