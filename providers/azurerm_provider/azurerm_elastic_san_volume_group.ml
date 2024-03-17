(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_elastic_san_volume_group__encryption = {
  current_versioned_key_expiration_timestamp : string;
      (** current_versioned_key_expiration_timestamp *)
  current_versioned_key_id : string;  (** current_versioned_key_id *)
  key_vault_key_id : string;  (** key_vault_key_id *)
  last_key_rotation_timestamp : string;
      (** last_key_rotation_timestamp *)
  user_assigned_identity_id : string option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_elastic_san_volume_group__encryption *)

type azurerm_elastic_san_volume_group__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_elastic_san_volume_group__identity *)

type azurerm_elastic_san_volume_group__network_rule = {
  action : string option; [@option]  (** action *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_elastic_san_volume_group__network_rule *)

type azurerm_elastic_san_volume_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_elastic_san_volume_group__timeouts *)

type azurerm_elastic_san_volume_group = {
  elastic_san_id : string;  (** elastic_san_id *)
  encryption_type : string option; [@option]  (** encryption_type *)
  name : string;  (** name *)
  protocol_type : string option; [@option]  (** protocol_type *)
  encryption : azurerm_elastic_san_volume_group__encryption list;
  identity : azurerm_elastic_san_volume_group__identity list;
  network_rule : azurerm_elastic_san_volume_group__network_rule list;
  timeouts : azurerm_elastic_san_volume_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_elastic_san_volume_group *)

let azurerm_elastic_san_volume_group ?encryption_type ?protocol_type
    ?timeouts ~elastic_san_id ~name ~encryption ~identity
    ~network_rule __resource_id =
  let __resource_type = "azurerm_elastic_san_volume_group" in
  let __resource =
    {
      elastic_san_id;
      encryption_type;
      name;
      protocol_type;
      encryption;
      identity;
      network_rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_elastic_san_volume_group __resource);
  ()
