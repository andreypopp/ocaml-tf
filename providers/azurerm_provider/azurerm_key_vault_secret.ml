(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_secret__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_secret__timeouts *)

type azurerm_key_vault_secret = {
  content_type : string prop option; [@option]  (** content_type *)
  expiration_date : string prop option; [@option]
      (** expiration_date *)
  id : string prop option; [@option]  (** id *)
  key_vault_id : string prop;  (** key_vault_id *)
  name : string prop;  (** name *)
  not_before_date : string prop option; [@option]
      (** not_before_date *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  value : string prop;  (** value *)
  timeouts : azurerm_key_vault_secret__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_secret *)

let azurerm_key_vault_secret ?content_type ?expiration_date ?id
    ?not_before_date ?tags ?timeouts ~key_vault_id ~name ~value
    __resource_id =
  let __resource_type = "azurerm_key_vault_secret" in
  let __resource =
    {
      content_type;
      expiration_date;
      id;
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
