(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_secret__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_secret__timeouts *)

type azurerm_key_vault_secret = {
  content_type : string option; [@option]  (** content_type *)
  expiration_date : string option; [@option]  (** expiration_date *)
  key_vault_id : string;  (** key_vault_id *)
  name : string;  (** name *)
  not_before_date : string option; [@option]  (** not_before_date *)
  tags : (string * string) list option; [@option]  (** tags *)
  value : string;  (** value *)
  timeouts : azurerm_key_vault_secret__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_secret *)

let azurerm_key_vault_secret ?content_type ?expiration_date
    ?not_before_date ?tags ?timeouts ~key_vault_id ~name ~value
    __resource_id =
  let __resource_type = "azurerm_key_vault_secret" in
  let __resource =
    {
      content_type;
      expiration_date;
      key_vault_id;
      name;
      not_before_date;
      tags;
      value;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_secret __resource);
  ()
