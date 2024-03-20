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

type azurerm_postgresql_flexible_server_configuration = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  server_id : string prop;  (** server_id *)
  value : string prop;  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_configuration *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_postgresql_flexible_server_configuration ?id ?timeouts
    ~name ~server_id ~value () :
    azurerm_postgresql_flexible_server_configuration =
  { id; name; server_id; value; timeouts }

type t = {
  id : string prop;
  name : string prop;
  server_id : string prop;
  value : string prop;
}

let make ?id ?timeouts ~name ~server_id ~value __id =
  let __type = "azurerm_postgresql_flexible_server_configuration" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       server_id = Prop.computed __type __id "server_id";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_postgresql_flexible_server_configuration
        (azurerm_postgresql_flexible_server_configuration ?id
           ?timeouts ~name ~server_id ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~server_id ~value __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~server_id ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
