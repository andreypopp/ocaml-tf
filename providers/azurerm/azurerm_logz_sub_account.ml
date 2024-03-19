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

type user = {
  email : string prop;  (** email *)
  first_name : string prop;  (** first_name *)
  last_name : string prop;  (** last_name *)
  phone_number : string prop;  (** phone_number *)
}
[@@deriving yojson_of]
(** user *)

type azurerm_logz_sub_account = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  logz_monitor_id : string prop;  (** logz_monitor_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
  user : user list;
}
[@@deriving yojson_of]
(** azurerm_logz_sub_account *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let user ~email ~first_name ~last_name ~phone_number () : user =
  { email; first_name; last_name; phone_number }

let azurerm_logz_sub_account ?enabled ?id ?tags ?timeouts
    ~logz_monitor_id ~name ~user () : azurerm_logz_sub_account =
  { enabled; id; logz_monitor_id; name; tags; timeouts; user }

type t = {
  enabled : bool prop;
  id : string prop;
  logz_monitor_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?enabled ?id ?tags ?timeouts ~logz_monitor_id
    ~name ~user __resource_id =
  let __resource_type = "azurerm_logz_sub_account" in
  let __resource =
    azurerm_logz_sub_account ?enabled ?id ?tags ?timeouts
      ~logz_monitor_id ~name ~user ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logz_sub_account __resource);
  let __resource_attributes =
    ({
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       logz_monitor_id =
         Prop.computed __resource_type __resource_id
           "logz_monitor_id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
