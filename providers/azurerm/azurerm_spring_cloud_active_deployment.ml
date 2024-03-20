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

type azurerm_spring_cloud_active_deployment = {
  deployment_name : string prop;  (** deployment_name *)
  id : string prop option; [@option]  (** id *)
  spring_cloud_app_id : string prop;  (** spring_cloud_app_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_active_deployment *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_active_deployment ?id ?timeouts
    ~deployment_name ~spring_cloud_app_id () :
    azurerm_spring_cloud_active_deployment =
  { deployment_name; id; spring_cloud_app_id; timeouts }

type t = {
  deployment_name : string prop;
  id : string prop;
  spring_cloud_app_id : string prop;
}

let make ?id ?timeouts ~deployment_name ~spring_cloud_app_id __id =
  let __type = "azurerm_spring_cloud_active_deployment" in
  let __attrs =
    ({
       deployment_name = Prop.computed __type __id "deployment_name";
       id = Prop.computed __type __id "id";
       spring_cloud_app_id =
         Prop.computed __type __id "spring_cloud_app_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_active_deployment
        (azurerm_spring_cloud_active_deployment ?id ?timeouts
           ~deployment_name ~spring_cloud_app_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~deployment_name
    ~spring_cloud_app_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~deployment_name ~spring_cloud_app_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
