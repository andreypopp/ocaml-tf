(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_user = {
  api_management_name : string prop;  (** api_management_name *)
  confirmation : string prop option; [@option]  (** confirmation *)
  email : string prop;  (** email *)
  first_name : string prop;  (** first_name *)
  id : string prop option; [@option]  (** id *)
  last_name : string prop;  (** last_name *)
  note : string prop option; [@option]  (** note *)
  password : string prop option; [@option]  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  state : string prop option; [@option]  (** state *)
  user_id : string prop;  (** user_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_user *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_user ?confirmation ?id ?note ?password
    ?state ?timeouts ~api_management_name ~email ~first_name
    ~last_name ~resource_group_name ~user_id () :
    azurerm_api_management_user =
  {
    api_management_name;
    confirmation;
    email;
    first_name;
    id;
    last_name;
    note;
    password;
    resource_group_name;
    state;
    user_id;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  confirmation : string prop;
  email : string prop;
  first_name : string prop;
  id : string prop;
  last_name : string prop;
  note : string prop;
  password : string prop;
  resource_group_name : string prop;
  state : string prop;
  user_id : string prop;
}

let make ?confirmation ?id ?note ?password ?state ?timeouts
    ~api_management_name ~email ~first_name ~last_name
    ~resource_group_name ~user_id __id =
  let __type = "azurerm_api_management_user" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       confirmation = Prop.computed __type __id "confirmation";
       email = Prop.computed __type __id "email";
       first_name = Prop.computed __type __id "first_name";
       id = Prop.computed __type __id "id";
       last_name = Prop.computed __type __id "last_name";
       note = Prop.computed __type __id "note";
       password = Prop.computed __type __id "password";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       state = Prop.computed __type __id "state";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_user
        (azurerm_api_management_user ?confirmation ?id ?note
           ?password ?state ?timeouts ~api_management_name ~email
           ~first_name ~last_name ~resource_group_name ~user_id ());
    attrs = __attrs;
  }

let register ?tf_module ?confirmation ?id ?note ?password ?state
    ?timeouts ~api_management_name ~email ~first_name ~last_name
    ~resource_group_name ~user_id __id =
  let (r : _ Tf_core.resource) =
    make ?confirmation ?id ?note ?password ?state ?timeouts
      ~api_management_name ~email ~first_name ~last_name
      ~resource_group_name ~user_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
