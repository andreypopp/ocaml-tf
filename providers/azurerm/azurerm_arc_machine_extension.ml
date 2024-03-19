(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_arc_machine_extension *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_arc_machine_extension ?automatic_upgrade_enabled
    ?force_update_tag ?id ?protected_settings ?settings ?tags
    ?type_handler_version ?timeouts ~arc_machine_id ~location ~name
    ~publisher ~type_ () : azurerm_arc_machine_extension =
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

type t = {
  arc_machine_id : string prop;
  automatic_upgrade_enabled : bool prop;
  force_update_tag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  protected_settings : string prop;
  publisher : string prop;
  settings : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  type_handler_version : string prop;
}

let register ?tf_module ?automatic_upgrade_enabled ?force_update_tag
    ?id ?protected_settings ?settings ?tags ?type_handler_version
    ?timeouts ~arc_machine_id ~location ~name ~publisher ~type_
    __resource_id =
  let __resource_type = "azurerm_arc_machine_extension" in
  let __resource =
    azurerm_arc_machine_extension ?automatic_upgrade_enabled
      ?force_update_tag ?id ?protected_settings ?settings ?tags
      ?type_handler_version ?timeouts ~arc_machine_id ~location ~name
      ~publisher ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_arc_machine_extension __resource);
  let __resource_attributes =
    ({
       arc_machine_id =
         Prop.computed __resource_type __resource_id "arc_machine_id";
       automatic_upgrade_enabled =
         Prop.computed __resource_type __resource_id
           "automatic_upgrade_enabled";
       force_update_tag =
         Prop.computed __resource_type __resource_id
           "force_update_tag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       protected_settings =
         Prop.computed __resource_type __resource_id
           "protected_settings";
       publisher =
         Prop.computed __resource_type __resource_id "publisher";
       settings =
         Prop.computed __resource_type __resource_id "settings";
       tags = Prop.computed __resource_type __resource_id "tags";
       type_ = Prop.computed __resource_type __resource_id "type";
       type_handler_version =
         Prop.computed __resource_type __resource_id
           "type_handler_version";
     }
      : t)
  in
  __resource_attributes
