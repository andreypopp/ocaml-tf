(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_spring_cloud_application_insights_application_performance_monitoring = {
  connection_string : string prop option; [@option]
  globally_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  role_instance : string prop option; [@option]
  role_name : string prop option; [@option]
  sampling_percentage : float prop option; [@option]
  sampling_requests_per_second : float prop option; [@option]
  spring_cloud_service_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_spring_cloud_application_insights_application_performance_monitoring) ->
  ()

let yojson_of_azurerm_spring_cloud_application_insights_application_performance_monitoring
    =
  (function
   | {
       connection_string = v_connection_string;
       globally_enabled = v_globally_enabled;
       id = v_id;
       name = v_name;
       role_instance = v_role_instance;
       role_name = v_role_name;
       sampling_percentage = v_sampling_percentage;
       sampling_requests_per_second = v_sampling_requests_per_second;
       spring_cloud_service_id = v_spring_cloud_service_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_service_id
         in
         ("spring_cloud_service_id", arg) :: bnds
       in
       let bnds =
         match v_sampling_requests_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sampling_requests_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sampling_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sampling_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_instance", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_globally_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "globally_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_string", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_application_insights_application_performance_monitoring ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_spring_cloud_application_insights_application_performance_monitoring

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
