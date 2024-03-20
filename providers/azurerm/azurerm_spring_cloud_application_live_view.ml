(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_application_live_view = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_application_live_view *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_spring_cloud_application_live_view ?id ?timeouts ~name
    ~spring_cloud_service_id () :
    azurerm_spring_cloud_application_live_view =
  { id; name; spring_cloud_service_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

let make ?id ?timeouts ~name ~spring_cloud_service_id __id =
  let __type = "azurerm_spring_cloud_application_live_view" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_application_live_view
        (azurerm_spring_cloud_application_live_view ?id ?timeouts
           ~name ~spring_cloud_service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~spring_cloud_service_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~spring_cloud_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
