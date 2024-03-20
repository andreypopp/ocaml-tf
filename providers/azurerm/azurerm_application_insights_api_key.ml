(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_application_insights_api_key = {
  application_insights_id : string prop;
      (** application_insights_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  read_permissions : string prop list option; [@option]
      (** read_permissions *)
  write_permissions : string prop list option; [@option]
      (** write_permissions *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_api_key *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_application_insights_api_key ?id ?read_permissions
    ?write_permissions ?timeouts ~application_insights_id ~name () :
    azurerm_application_insights_api_key =
  {
    application_insights_id;
    id;
    name;
    read_permissions;
    write_permissions;
    timeouts;
  }

type t = {
  api_key : string prop;
  application_insights_id : string prop;
  id : string prop;
  name : string prop;
  read_permissions : string list prop;
  write_permissions : string list prop;
}

let make ?id ?read_permissions ?write_permissions ?timeouts
    ~application_insights_id ~name __id =
  let __type = "azurerm_application_insights_api_key" in
  let __attrs =
    ({
       api_key = Prop.computed __type __id "api_key";
       application_insights_id =
         Prop.computed __type __id "application_insights_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       read_permissions =
         Prop.computed __type __id "read_permissions";
       write_permissions =
         Prop.computed __type __id "write_permissions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_insights_api_key
        (azurerm_application_insights_api_key ?id ?read_permissions
           ?write_permissions ?timeouts ~application_insights_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?read_permissions ?write_permissions
    ?timeouts ~application_insights_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?read_permissions ?write_permissions ?timeouts
      ~application_insights_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
