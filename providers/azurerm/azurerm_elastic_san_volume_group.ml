(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_elastic_san_volume_group__encryption = {
  current_versioned_key_expiration_timestamp : string prop;
      (** current_versioned_key_expiration_timestamp *)
  current_versioned_key_id : string prop;
      (** current_versioned_key_id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  last_key_rotation_timestamp : string prop;
      (** last_key_rotation_timestamp *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_elastic_san_volume_group__encryption *)

type azurerm_elastic_san_volume_group__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_elastic_san_volume_group__identity *)

type azurerm_elastic_san_volume_group__network_rule = {
  action : string prop option; [@option]  (** action *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_elastic_san_volume_group__network_rule *)

type azurerm_elastic_san_volume_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_elastic_san_volume_group__timeouts *)

type azurerm_elastic_san_volume_group = {
  elastic_san_id : string prop;  (** elastic_san_id *)
  encryption_type : string prop option; [@option]
      (** encryption_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  protocol_type : string prop option; [@option]  (** protocol_type *)
  encryption : azurerm_elastic_san_volume_group__encryption list;
  identity : azurerm_elastic_san_volume_group__identity list;
  network_rule : azurerm_elastic_san_volume_group__network_rule list;
  timeouts : azurerm_elastic_san_volume_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_elastic_san_volume_group *)

type t = {
  elastic_san_id : string prop;
  encryption_type : string prop;
  id : string prop;
  name : string prop;
  protocol_type : string prop;
}

let azurerm_elastic_san_volume_group ?encryption_type ?id
    ?protocol_type ?timeouts ~elastic_san_id ~name ~encryption
    ~identity ~network_rule __resource_id =
  let __resource_type = "azurerm_elastic_san_volume_group" in
  let __resource =
    ({
       elastic_san_id;
       encryption_type;
       id;
       name;
       protocol_type;
       encryption;
       identity;
       network_rule;
       timeouts;
     }
      : azurerm_elastic_san_volume_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_elastic_san_volume_group __resource);
  let __resource_attributes =
    ({
       elastic_san_id =
         Prop.computed __resource_type __resource_id "elastic_san_id";
       encryption_type =
         Prop.computed __resource_type __resource_id
           "encryption_type";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       protocol_type =
         Prop.computed __resource_type __resource_id "protocol_type";
     }
      : t)
  in
  __resource_attributes
