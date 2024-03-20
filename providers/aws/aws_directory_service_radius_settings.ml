(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_directory_service_radius_settings = {
  authentication_protocol : string prop;
      (** authentication_protocol *)
  directory_id : string prop;  (** directory_id *)
  display_label : string prop;  (** display_label *)
  id : string prop option; [@option]  (** id *)
  radius_port : float prop;  (** radius_port *)
  radius_retries : float prop;  (** radius_retries *)
  radius_servers : string prop list;  (** radius_servers *)
  radius_timeout : float prop;  (** radius_timeout *)
  shared_secret : string prop;  (** shared_secret *)
  use_same_username : bool prop option; [@option]
      (** use_same_username *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_directory_service_radius_settings *)

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
