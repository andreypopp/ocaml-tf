(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?automatic_upgrade_enabled ?force_update_tag ?id
    ?protected_settings ?settings ?tags ?type_handler_version
    ?timeouts ~arc_machine_id ~location ~name ~publisher ~type_ __id
    =
  let __type = "azurerm_arc_machine_extension" in
  let __attrs =
    ({
       arc_machine_id = Prop.computed __type __id "arc_machine_id";
       automatic_upgrade_enabled =
         Prop.computed __type __id "automatic_upgrade_enabled";
       force_update_tag =
         Prop.computed __type __id "force_update_tag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       protected_settings =
         Prop.computed __type __id "protected_settings";
       publisher = Prop.computed __type __id "publisher";
       settings = Prop.computed __type __id "settings";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       type_handler_version =
         Prop.computed __type __id "type_handler_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_arc_machine_extension
        (azurerm_arc_machine_extension ?automatic_upgrade_enabled
           ?force_update_tag ?id ?protected_settings ?settings ?tags
           ?type_handler_version ?timeouts ~arc_machine_id ~location
           ~name ~publisher ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic_upgrade_enabled ?force_update_tag
    ?id ?protected_settings ?settings ?tags ?type_handler_version
    ?timeouts ~arc_machine_id ~location ~name ~publisher ~type_ __id
    =
  let (r : _ Tf_core.resource) =
    make ?automatic_upgrade_enabled ?force_update_tag ?id
      ?protected_settings ?settings ?tags ?type_handler_version
      ?timeouts ~arc_machine_id ~location ~name ~publisher ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
