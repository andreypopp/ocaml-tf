(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_arc_machine_extension__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_arc_machine_extension__timeouts *)

type azurerm_arc_machine_extension = {
  arc_machine_id : string prop;  (** arc_machine_id *)
  automatic_upgrade_enabled : bool prop option; [@option]
      (** automatic_upgrade_enabled *)
  force_update_tag : string prop option; [@option]
      (** force_update_tag *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  protected_settings : string prop option; [@option]
      (** protected_settings *)
  publisher : string prop;  (** publisher *)
  settings : string prop option; [@option]  (** settings *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
  type_handler_version : string prop option; [@option]
      (** type_handler_version *)
  timeouts : azurerm_arc_machine_extension__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_arc_machine_extension *)

let azurerm_arc_machine_extension ?automatic_upgrade_enabled
    ?force_update_tag ?id ?protected_settings ?settings ?tags
    ?type_handler_version ?timeouts ~arc_machine_id ~location ~name
    ~publisher ~type_ __resource_id =
  let __resource_type = "azurerm_arc_machine_extension" in
  let __resource =
    {
      arc_machine_id;
      automatic_upgrade_enabled;
      force_update_tag;
      id;
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
