(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type container = {
  command : string prop list option; [@option]
  container_name : string prop;
  environment : (string * string prop) list option; [@option]
  image : string prop;
  ports : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container) -> ()

let yojson_of_container =
  (function
   | {
       command = v_command;
       container_name = v_container_name;
       environment = v_environment;
       image = v_image;
       ports = v_ports;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "ports", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         match v_environment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "environment", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container

[@@@deriving.end]

type public_endpoint__health_check = {
  healthy_threshold : float prop option; [@option]
  interval_seconds : float prop option; [@option]
  path : string prop option; [@option]
  success_codes : string prop option; [@option]
  timeout_seconds : float prop option; [@option]
  unhealthy_threshold : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : public_endpoint__health_check) -> ()

let yojson_of_public_endpoint__health_check =
  (function
   | {
       healthy_threshold = v_healthy_threshold;
       interval_seconds = v_interval_seconds;
       path = v_path;
       success_codes = v_success_codes;
       timeout_seconds = v_timeout_seconds;
       unhealthy_threshold = v_unhealthy_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unhealthy_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "unhealthy_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_codes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "success_codes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_healthy_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "healthy_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : public_endpoint__health_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_public_endpoint__health_check

[@@@deriving.end]

type public_endpoint = {
  container_name : string prop;
  container_port : float prop;
  health_check : public_endpoint__health_check list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : public_endpoint) -> ()

let yojson_of_public_endpoint =
  (function
   | {
       container_name = v_container_name;
       container_port = v_container_port;
       health_check = v_health_check;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_health_check then bnds
         else
           let arg =
             (yojson_of_list yojson_of_public_endpoint__health_check)
               v_health_check
           in
           let bnd = "health_check", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_container_port in
         ("container_port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : public_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_public_endpoint

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_lightsail_container_service_deployment_version = {
  id : string prop option; [@option]
  service_name : string prop;
  container : container list;
      [@default []] [@yojson_drop_default ( = )]
  public_endpoint : public_endpoint list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_lightsail_container_service_deployment_version) -> ()

let yojson_of_aws_lightsail_container_service_deployment_version =
  (function
   | {
       id = v_id;
       service_name = v_service_name;
       container = v_container;
       public_endpoint = v_public_endpoint;
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
         if [] = v_public_endpoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_public_endpoint)
               v_public_endpoint
           in
           let bnd = "public_endpoint", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_container then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container) v_container
           in
           let bnd = "container", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lightsail_container_service_deployment_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_container_service_deployment_version

[@@@deriving.end]

let container ?command ?environment ?ports ~container_name ~image ()
    : container =
  { command; container_name; environment; image; ports }

let public_endpoint__health_check ?healthy_threshold
    ?interval_seconds ?path ?success_codes ?timeout_seconds
    ?unhealthy_threshold () : public_endpoint__health_check =
  {
    healthy_threshold;
    interval_seconds;
    path;
    success_codes;
    timeout_seconds;
    unhealthy_threshold;
  }

let public_endpoint ~container_name ~container_port ~health_check ()
    : public_endpoint =
  { container_name; container_port; health_check }

let timeouts ?create () : timeouts = { create }

let aws_lightsail_container_service_deployment_version ?id
    ?(public_endpoint = []) ?timeouts ~service_name ~container () :
    aws_lightsail_container_service_deployment_version =
  { id; service_name; container; public_endpoint; timeouts }

type t = {
  tf_name : string;
  created_at : string prop;
  id : string prop;
  service_name : string prop;
  state : string prop;
  version : float prop;
}

let make ?id ?(public_endpoint = []) ?timeouts ~service_name
    ~container __id =
  let __type =
    "aws_lightsail_container_service_deployment_version"
  in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       service_name = Prop.computed __type __id "service_name";
       state = Prop.computed __type __id "state";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_container_service_deployment_version
        (aws_lightsail_container_service_deployment_version ?id
           ~public_endpoint ?timeouts ~service_name ~container ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(public_endpoint = []) ?timeouts
    ~service_name ~container __id =
  let (r : _ Tf_core.resource) =
    make ?id ~public_endpoint ?timeouts ~service_name ~container __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
