(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logz_sub_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logz_sub_account__timeouts *)

type azurerm_logz_sub_account__user = {
  email : string prop;  (** email *)
  first_name : string prop;  (** first_name *)
  last_name : string prop;  (** last_name *)
  phone_number : string prop;  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_logz_sub_account__user *)

type azurerm_logz_sub_account = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  logz_monitor_id : string prop;  (** logz_monitor_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_logz_sub_account__timeouts option;
  user : azurerm_logz_sub_account__user list;
}
[@@deriving yojson_of]
(** azurerm_logz_sub_account *)

let azurerm_logz_sub_account ?enabled ?id ?tags ?timeouts
    ~logz_monitor_id ~name ~user __resource_id =
  let __resource_type = "azurerm_logz_sub_account" in
  let __resource =
    { enabled; id; logz_monitor_id; name; tags; timeouts; user }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logz_sub_account __resource);
  ()
