(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type quota = {
  cpu : string prop option; [@option]  (** cpu *)
  memory : string prop option; [@option]  (** memory *)
}
[@@deriving yojson_of]
(** quota *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_build_deployment = {
  addon_json : string prop option; [@option]  (** addon_json *)
  application_performance_monitoring_ids : string prop list option;
      [@option]
      (** application_performance_monitoring_ids *)
  build_result_id : string prop;  (** build_result_id *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** environment_variables *)
  id : string prop option; [@option]  (** id *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  name : string prop;  (** name *)
  spring_cloud_app_id : string prop;  (** spring_cloud_app_id *)
  quota : quota list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_build_deployment *)

let quota ?cpu ?memory () : quota = { cpu; memory }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_build_deployment ?addon_json
    ?application_performance_monitoring_ids ?environment_variables
    ?id ?instance_count ?timeouts ~build_result_id ~name
    ~spring_cloud_app_id ~quota () :
    azurerm_spring_cloud_build_deployment =
  {
    addon_json;
    application_performance_monitoring_ids;
    build_result_id;
    environment_variables;
    id;
    instance_count;
    name;
    spring_cloud_app_id;
    quota;
    timeouts;
  }

type t = {
  addon_json : string prop;
  application_performance_monitoring_ids : string list prop;
  build_result_id : string prop;
  environment_variables : (string * string) list prop;
  id : string prop;
  instance_count : float prop;
  name : string prop;
  spring_cloud_app_id : string prop;
}

let make ?addon_json ?application_performance_monitoring_ids
    ?environment_variables ?id ?instance_count ?timeouts
    ~build_result_id ~name ~spring_cloud_app_id ~quota __id =
  let __type = "azurerm_spring_cloud_build_deployment" in
  let __attrs =
    ({
       addon_json = Prop.computed __type __id "addon_json";
       application_performance_monitoring_ids =
         Prop.computed __type __id
           "application_performance_monitoring_ids";
       build_result_id = Prop.computed __type __id "build_result_id";
       environment_variables =
         Prop.computed __type __id "environment_variables";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       name = Prop.computed __type __id "name";
       spring_cloud_app_id =
         Prop.computed __type __id "spring_cloud_app_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_build_deployment
        (azurerm_spring_cloud_build_deployment ?addon_json
           ?application_performance_monitoring_ids
           ?environment_variables ?id ?instance_count ?timeouts
           ~build_result_id ~name ~spring_cloud_app_id ~quota ());
    attrs = __attrs;
  }

let register ?tf_module ?addon_json
    ?application_performance_monitoring_ids ?environment_variables
    ?id ?instance_count ?timeouts ~build_result_id ~name
    ~spring_cloud_app_id ~quota __id =
  let (r : _ Tf_core.resource) =
    make ?addon_json ?application_performance_monitoring_ids
      ?environment_variables ?id ?instance_count ?timeouts
      ~build_result_id ~name ~spring_cloud_app_id ~quota __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
