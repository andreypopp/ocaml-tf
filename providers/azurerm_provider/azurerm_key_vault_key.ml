(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_key__rotation_policy__automatic = {
  time_after_creation : string option; [@option]
      (** time_after_creation *)
  time_before_expiry : string option; [@option]
      (** time_before_expiry *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_key__rotation_policy__automatic *)

type azurerm_key_vault_key__rotation_policy = {
  expire_after : string option; [@option]  (** expire_after *)
  notify_before_expiry : string option; [@option]
      (** notify_before_expiry *)
  automatic : azurerm_key_vault_key__rotation_policy__automatic list;
}
[@@deriving yojson_of]
(** azurerm_key_vault_key__rotation_policy *)

type azurerm_key_vault_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_key__timeouts *)

type azurerm_key_vault_key = {
  expiration_date : string option; [@option]  (** expiration_date *)
  key_opts : string list;  (** key_opts *)
  key_size : float option; [@option]  (** key_size *)
  key_type : string;  (** key_type *)
  key_vault_id : string;  (** key_vault_id *)
  name : string;  (** name *)
  not_before_date : string option; [@option]  (** not_before_date *)
  tags : (string * string) list option; [@option]  (** tags *)
  rotation_policy : azurerm_key_vault_key__rotation_policy list;
  timeouts : azurerm_key_vault_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_key *)

let azurerm_key_vault_key ?expiration_date ?key_size ?not_before_date
    ?tags ?timeouts ~key_opts ~key_type ~key_vault_id ~name
    ~rotation_policy __resource_id =
  let __resource_type = "azurerm_key_vault_key" in
  let __resource =
    {
      expiration_date;
      key_opts;
      key_size;
      key_type;
      key_vault_id;
      name;
      not_before_date;
      tags;
      rotation_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_key __resource);
  ()
