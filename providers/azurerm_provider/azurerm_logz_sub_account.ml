(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logz_sub_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logz_sub_account__timeouts *)

type azurerm_logz_sub_account__user = {
  email : string;  (** email *)
  first_name : string;  (** first_name *)
  last_name : string;  (** last_name *)
  phone_number : string;  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_logz_sub_account__user *)

type azurerm_logz_sub_account = {
  enabled : bool option; [@option]  (** enabled *)
  logz_monitor_id : string;  (** logz_monitor_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_logz_sub_account__timeouts option;
  user : azurerm_logz_sub_account__user list;
}
[@@deriving yojson_of]
(** azurerm_logz_sub_account *)

let azurerm_logz_sub_account ?enabled ?tags ?timeouts
    ~logz_monitor_id ~name ~user __resource_id =
  let __resource_type = "azurerm_logz_sub_account" in
  let __resource =
    { enabled; logz_monitor_id; name; tags; timeouts; user }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logz_sub_account __resource);
  ()
