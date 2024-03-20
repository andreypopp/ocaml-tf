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

type azurerm_spring_cloud_elastic_application_performance_monitoring = {
  application_packages : string prop list;
      (** application_packages *)
  globally_enabled : bool prop option; [@option]
      (** globally_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  server_url : string prop;  (** server_url *)
  service_name : string prop;  (** service_name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_elastic_application_performance_monitoring *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_elastic_application_performance_monitoring
    ?globally_enabled ?id ?timeouts ~application_packages ~name
    ~server_url ~service_name ~spring_cloud_service_id () :
    azurerm_spring_cloud_elastic_application_performance_monitoring =
  {
    application_packages;
    globally_enabled;
    id;
    name;
    server_url;
    service_name;
    spring_cloud_service_id;
    timeouts;
  }

type t = {
  application_packages : string list prop;
  globally_enabled : bool prop;
  id : string prop;
  name : string prop;
  server_url : string prop;
  service_name : string prop;
  spring_cloud_service_id : string prop;
}

let make ?globally_enabled ?id ?timeouts ~application_packages ~name
    ~server_url ~service_name ~spring_cloud_service_id __id =
  let __type =
    "azurerm_spring_cloud_elastic_application_performance_monitoring"
  in
  let __attrs =
    ({
       application_packages =
         Prop.computed __type __id "application_packages";
       globally_enabled =
         Prop.computed __type __id "globally_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       server_url = Prop.computed __type __id "server_url";
       service_name = Prop.computed __type __id "service_name";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_elastic_application_performance_monitoring
        (azurerm_spring_cloud_elastic_application_performance_monitoring
           ?globally_enabled ?id ?timeouts ~application_packages
           ~name ~server_url ~service_name ~spring_cloud_service_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?globally_enabled ?id ?timeouts
    ~application_packages ~name ~server_url ~service_name
    ~spring_cloud_service_id __id =
  let (r : _ Tf_core.resource) =
    make ?globally_enabled ?id ?timeouts ~application_packages ~name
      ~server_url ~service_name ~spring_cloud_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
