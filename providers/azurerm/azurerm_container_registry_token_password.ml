(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~container_registry_token_id ~password1
    ~password2 __id =
  let __type = "azurerm_container_registry_token_password" in
  let __attrs =
    ({
       container_registry_token_id =
         Prop.computed __type __id "container_registry_token_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_registry_token_password
        (azurerm_container_registry_token_password ?id ?timeouts
           ~container_registry_token_id ~password1 ~password2 ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~container_registry_token_id
    ~password1 ~password2 __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~container_registry_token_id ~password1
      ~password2 __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
