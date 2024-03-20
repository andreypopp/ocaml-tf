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

type azurerm_spring_cloud_custom_domain = {
  certificate_name : string prop option; [@option]
      (** certificate_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_app_id : string prop;  (** spring_cloud_app_id *)
  thumbprint : string prop option; [@option]  (** thumbprint *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_custom_domain *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_custom_domain ?certificate_name ?id
    ?thumbprint ?timeouts ~name ~spring_cloud_app_id () :
    azurerm_spring_cloud_custom_domain =
  {
    certificate_name;
    id;
    name;
    spring_cloud_app_id;
    thumbprint;
    timeouts;
  }

type t = {
  certificate_name : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_app_id : string prop;
  thumbprint : string prop;
}

let make ?certificate_name ?id ?thumbprint ?timeouts ~name
    ~spring_cloud_app_id __id =
  let __type = "azurerm_spring_cloud_custom_domain" in
  let __attrs =
    ({
       certificate_name =
         Prop.computed __type __id "certificate_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       spring_cloud_app_id =
         Prop.computed __type __id "spring_cloud_app_id";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_custom_domain
        (azurerm_spring_cloud_custom_domain ?certificate_name ?id
           ?thumbprint ?timeouts ~name ~spring_cloud_app_id ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_name ?id ?thumbprint ?timeouts
    ~name ~spring_cloud_app_id __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_name ?id ?thumbprint ?timeouts ~name
      ~spring_cloud_app_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
