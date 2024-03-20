(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_https_health_check = {
  check_interval_sec : float prop option; [@option]
      (** How often (in seconds) to send a health check. The default value is 5
seconds. *)
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  healthy_threshold : float prop option; [@option]
      (** A so-far unhealthy instance will be marked healthy after this many
consecutive successes. The default value is 2. *)
  host : string prop option; [@option]
      (** The value of the host header in the HTTPS health check request. If
left empty (default value), the public IP on behalf of which this
health check is performed will be used. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash. *)
  port : float prop option; [@option]
      (** The TCP port number for the HTTPS health check request.
The default value is 443. *)
  project : string prop option; [@option]  (** project *)
  request_path : string prop option; [@option]
      (** The request path of the HTTPS health check request.
The default value is /. *)
  timeout_sec : float prop option; [@option]
      (** How long (in seconds) to wait before claiming failure.
The default value is 5 seconds.  It is invalid for timeoutSec to have
greater value than checkIntervalSec. *)
  unhealthy_threshold : float prop option; [@option]
      (** A so-far healthy instance will be marked unhealthy after this many
consecutive failures. The default value is 2. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_https_health_check *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_https_health_check ?check_interval_sec
    ?description ?healthy_threshold ?host ?id ?port ?project
    ?request_path ?timeout_sec ?unhealthy_threshold ?timeouts ~name
    () : google_compute_https_health_check =
  {
    check_interval_sec;
    description;
    healthy_threshold;
    host;
    id;
    name;
    port;
    project;
    request_path;
    timeout_sec;
    unhealthy_threshold;
    timeouts;
  }

type t = {
  check_interval_sec : float prop;
  creation_timestamp : string prop;
  description : string prop;
  healthy_threshold : float prop;
  host : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  project : string prop;
  request_path : string prop;
  self_link : string prop;
  timeout_sec : float prop;
  unhealthy_threshold : float prop;
}

let make ?check_interval_sec ?description ?healthy_threshold ?host
    ?id ?port ?project ?request_path ?timeout_sec
    ?unhealthy_threshold ?timeouts ~name __id =
  let __type = "google_compute_https_health_check" in
  let __attrs =
    ({
       check_interval_sec =
         Prop.computed __type __id "check_interval_sec";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       healthy_threshold =
         Prop.computed __type __id "healthy_threshold";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       request_path = Prop.computed __type __id "request_path";
       self_link = Prop.computed __type __id "self_link";
       timeout_sec = Prop.computed __type __id "timeout_sec";
       unhealthy_threshold =
         Prop.computed __type __id "unhealthy_threshold";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_https_health_check
        (google_compute_https_health_check ?check_interval_sec
           ?description ?healthy_threshold ?host ?id ?port ?project
           ?request_path ?timeout_sec ?unhealthy_threshold ?timeouts
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?check_interval_sec ?description
    ?healthy_threshold ?host ?id ?port ?project ?request_path
    ?timeout_sec ?unhealthy_threshold ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?check_interval_sec ?description ?healthy_threshold ?host
      ?id ?port ?project ?request_path ?timeout_sec
      ?unhealthy_threshold ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
