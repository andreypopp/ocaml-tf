(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
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

type aws_directory_service_radius_settings = {
  authentication_protocol : string prop;
  directory_id : string prop;
  display_label : string prop;
  id : string prop option; [@option]
  radius_port : float prop;
  radius_retries : float prop;
  radius_servers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  radius_timeout : float prop;
  shared_secret : string prop;
  use_same_username : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_directory_service_radius_settings) -> ()

let yojson_of_aws_directory_service_radius_settings =
  (function
   | {
       authentication_protocol = v_authentication_protocol;
       directory_id = v_directory_id;
       display_label = v_display_label;
       id = v_id;
       radius_port = v_radius_port;
       radius_retries = v_radius_retries;
       radius_servers = v_radius_servers;
       radius_timeout = v_radius_timeout;
       shared_secret = v_shared_secret;
       use_same_username = v_use_same_username;
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
         match v_use_same_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_same_username", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_shared_secret in
         ("shared_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_radius_timeout in
         ("radius_timeout", arg) :: bnds
       in
       let bnds =
         if [] = v_radius_servers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_radius_servers
           in
           let bnd = "radius_servers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_radius_retries in
         ("radius_retries", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_radius_port in
         ("radius_port", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_display_label in
         ("display_label", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_directory_id in
         ("directory_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_protocol
         in
         ("authentication_protocol", arg) :: bnds
       in
       `Assoc bnds
    : aws_directory_service_radius_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_directory_service_radius_settings

[@@@deriving.end]

let timeouts ?create ?update () : timeouts = { create; update }

let aws_directory_service_radius_settings ?id ?use_same_username
    ?timeouts ~authentication_protocol ~directory_id ~display_label
    ~radius_port ~radius_retries ~radius_servers ~radius_timeout
    ~shared_secret () : aws_directory_service_radius_settings =
  {
    authentication_protocol;
    directory_id;
    display_label;
    id;
    radius_port;
    radius_retries;
    radius_servers;
    radius_timeout;
    shared_secret;
    use_same_username;
    timeouts;
  }

type t = {
  tf_name : string;
  authentication_protocol : string prop;
  directory_id : string prop;
  display_label : string prop;
  id : string prop;
  radius_port : float prop;
  radius_retries : float prop;
  radius_servers : string list prop;
  radius_timeout : float prop;
  shared_secret : string prop;
  use_same_username : bool prop;
}

let make ?id ?use_same_username ?timeouts ~authentication_protocol
    ~directory_id ~display_label ~radius_port ~radius_retries
    ~radius_servers ~radius_timeout ~shared_secret __id =
  let __type = "aws_directory_service_radius_settings" in
  let __attrs =
    ({
       tf_name = __id;
       authentication_protocol =
         Prop.computed __type __id "authentication_protocol";
       directory_id = Prop.computed __type __id "directory_id";
       display_label = Prop.computed __type __id "display_label";
       id = Prop.computed __type __id "id";
       radius_port = Prop.computed __type __id "radius_port";
       radius_retries = Prop.computed __type __id "radius_retries";
       radius_servers = Prop.computed __type __id "radius_servers";
       radius_timeout = Prop.computed __type __id "radius_timeout";
       shared_secret = Prop.computed __type __id "shared_secret";
       use_same_username =
         Prop.computed __type __id "use_same_username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_radius_settings
        (aws_directory_service_radius_settings ?id ?use_same_username
           ?timeouts ~authentication_protocol ~directory_id
           ~display_label ~radius_port ~radius_retries
           ~radius_servers ~radius_timeout ~shared_secret ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?use_same_username ?timeouts
    ~authentication_protocol ~directory_id ~display_label
    ~radius_port ~radius_retries ~radius_servers ~radius_timeout
    ~shared_secret __id =
  let (r : _ Tf_core.resource) =
    make ?id ?use_same_username ?timeouts ~authentication_protocol
      ~directory_id ~display_label ~radius_port ~radius_retries
      ~radius_servers ~radius_timeout ~shared_secret __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
