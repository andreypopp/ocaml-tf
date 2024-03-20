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

type azurerm_spring_cloud_application_insights_application_performance_monitoring = {
  connection_string : string prop option; [@option]
      (** connection_string *)
  globally_enabled : bool prop option; [@option]
      (** globally_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_instance : string prop option; [@option]  (** role_instance *)
  role_name : string prop option; [@option]  (** role_name *)
  sampling_percentage : float prop option; [@option]
      (** sampling_percentage *)
  sampling_requests_per_second : float prop option; [@option]
      (** sampling_requests_per_second *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_application_insights_application_performance_monitoring *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_application_insights_application_performance_monitoring
    ?connection_string ?globally_enabled ?id ?role_instance
    ?role_name ?sampling_percentage ?sampling_requests_per_second
    ?timeouts ~name ~spring_cloud_service_id () :
    azurerm_spring_cloud_application_insights_application_performance_monitoring
    =
  {
    connection_string;
    globally_enabled;
    id;
    name;
    role_instance;
    role_name;
    sampling_percentage;
    sampling_requests_per_second;
    spring_cloud_service_id;
    timeouts;
  }

type t = {
  connection_string : string prop;
  globally_enabled : bool prop;
  id : string prop;
  name : string prop;
  role_instance : string prop;
  role_name : string prop;
  sampling_percentage : float prop;
  sampling_requests_per_second : float prop;
  spring_cloud_service_id : string prop;
}

let make ?connection_string ?globally_enabled ?id ?role_instance
    ?role_name ?sampling_percentage ?sampling_requests_per_second
    ?timeouts ~name ~spring_cloud_service_id __id =
  let __type =
    "azurerm_spring_cloud_application_insights_application_performance_monitoring"
  in
  let __attrs =
    ({
       connection_string =
         Prop.computed __type __id "connection_string";
       globally_enabled =
         Prop.computed __type __id "globally_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       role_instance = Prop.computed __type __id "role_instance";
       role_name = Prop.computed __type __id "role_name";
       sampling_percentage =
         Prop.computed __type __id "sampling_percentage";
       sampling_requests_per_second =
         Prop.computed __type __id "sampling_requests_per_second";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_application_insights_application_performance_monitoring
        (azurerm_spring_cloud_application_insights_application_performance_monitoring
           ?connection_string ?globally_enabled ?id ?role_instance
           ?role_name ?sampling_percentage
           ?sampling_requests_per_second ?timeouts ~name
           ~spring_cloud_service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?connection_string ?globally_enabled ?id
    ?role_instance ?role_name ?sampling_percentage
    ?sampling_requests_per_second ?timeouts ~name
    ~spring_cloud_service_id __id =
  let (r : _ Tf_core.resource) =
    make ?connection_string ?globally_enabled ?id ?role_instance
      ?role_name ?sampling_percentage ?sampling_requests_per_second
      ?timeouts ~name ~spring_cloud_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
