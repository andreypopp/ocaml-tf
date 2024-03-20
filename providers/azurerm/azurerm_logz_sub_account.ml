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

let make ?enabled ?id ?tags ?timeouts ~logz_monitor_id ~name ~user
    __id =
  let __type = "azurerm_logz_sub_account" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       logz_monitor_id = Prop.computed __type __id "logz_monitor_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logz_sub_account
        (azurerm_logz_sub_account ?enabled ?id ?tags ?timeouts
           ~logz_monitor_id ~name ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?tags ?timeouts ~logz_monitor_id
    ~name ~user __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?tags ?timeouts ~logz_monitor_id ~name ~user
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
