(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type password1 = {
  expiry : string prop option; [@option]  (** expiry *)
}
[@@deriving yojson_of]
(** password1 *)

type password2 = {
  expiry : string prop option; [@option]  (** expiry *)
}
[@@deriving yojson_of]
(** password2 *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_container_registry_token_password = {
  container_registry_token_id : string prop;
      (** container_registry_token_id *)
  id : string prop option; [@option]  (** id *)
  password1 : password1 list;
  password2 : password2 list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_token_password *)

let password1 ?expiry () : password1 = { expiry }
let password2 ?expiry () : password2 = { expiry }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_registry_token_password ?id ?timeouts
    ~container_registry_token_id ~password1 ~password2 () :
    azurerm_container_registry_token_password =
  { container_registry_token_id; id; password1; password2; timeouts }

type t = {
  container_registry_token_id : string prop;
  id : string prop;
}

let register ?tf_module ?id ?timeouts ~container_registry_token_id
    ~password1 ~password2 __resource_id =
  let __resource_type =
    "azurerm_container_registry_token_password"
  in
  let __resource =
    azurerm_container_registry_token_password ?id ?timeouts
      ~container_registry_token_id ~password1 ~password2 ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_token_password __resource);
  let __resource_attributes =
    ({
       container_registry_token_id =
         Prop.computed __resource_type __resource_id
           "container_registry_token_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
