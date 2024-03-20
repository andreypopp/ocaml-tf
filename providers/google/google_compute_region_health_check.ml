(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type grpc_health_check = {
  grpc_service_name : string prop option; [@option]
      (** The gRPC service name for the health check.
The value of grpcServiceName has the following meanings by convention:

* Empty serviceName means the overall status of all services at the backend.
* Non-empty serviceName means the health of that gRPC service, as defined by the owner of the service.

The grpcServiceName can only be ASCII. *)
  port : float prop option; [@option]
      (** The port number for the health check request.
Must be specified if portName and portSpecification are not set
or if port_specification is USE_FIXED_PORT. Valid values are 1 through 65535. *)
  port_name : string prop option; [@option]
      (** Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. *)
  port_specification : string prop option; [@option]
      (** Specifies how port is selected for health checking, can be one of the
following values:

  * 'USE_FIXED_PORT': The port number in 'port' is used for health checking.

  * 'USE_NAMED_PORT': The 'portName' is used for health checking.

  * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port specified for each
  network endpoint is used for health checking. For other backends, the
  port or named port specified in the Backend Service is used for health
  checking.

If not specified, gRPC health check follows behavior specified in 'port' and
'portName' fields. Possible values: [USE_FIXED_PORT, USE_NAMED_PORT, USE_SERVING_PORT] *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type http2_health_check = {
  host : string prop option; [@option]
      (** The value of the host header in the HTTP2 health check request.
If left empty (default value), the public IP on behalf of which this health
check is performed will be used. *)
  port : float prop option; [@option]
      (** The TCP port number for the HTTP2 health check request.
The default value is 443. *)
  port_name : string prop option; [@option]
      (** Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. *)
  port_specification : string prop option; [@option]
      (** Specifies how port is selected for health checking, can be one of the
following values:

  * 'USE_FIXED_PORT': The port number in 'port' is used for health checking.

  * 'USE_NAMED_PORT': The 'portName' is used for health checking.

  * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port specified for each
  network endpoint is used for health checking. For other backends, the
  port or named port specified in the Backend Service is used for health
  checking.

If not specified, HTTP2 health check follows behavior specified in 'port' and
'portName' fields. Possible values: [USE_FIXED_PORT, USE_NAMED_PORT, USE_SERVING_PORT] *)
  proxy_header : string prop option; [@option]
      (** Specifies the type of proxy header to append before sending data to the
backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  request_path : string prop option; [@option]
      (** The request path of the HTTP2 health check request.
The default value is /. *)
  response : string prop option; [@option]
      (** The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type http_health_check = {
  host : string prop option; [@option]
      (** The value of the host header in the HTTP health check request.
If left empty (default value), the public IP on behalf of which this health
check is performed will be used. *)
  port : float prop option; [@option]
      (** The TCP port number for the HTTP health check request.
The default value is 80. *)
  port_name : string prop option; [@option]
      (** Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. *)
  port_specification : string prop option; [@option]
      (** Specifies how port is selected for health checking, can be one of the
following values:

  * 'USE_FIXED_PORT': The port number in 'port' is used for health checking.

  * 'USE_NAMED_PORT': The 'portName' is used for health checking.

  * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port specified for each
  network endpoint is used for health checking. For other backends, the
  port or named port specified in the Backend Service is used for health
  checking.

If not specified, HTTP health check follows behavior specified in 'port' and
'portName' fields. Possible values: [USE_FIXED_PORT, USE_NAMED_PORT, USE_SERVING_PORT] *)
  proxy_header : string prop option; [@option]
      (** Specifies the type of proxy header to append before sending data to the
backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  request_path : string prop option; [@option]
      (** The request path of the HTTP health check request.
The default value is /. *)
  response : string prop option; [@option]
      (** The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type https_health_check = {
  host : string prop option; [@option]
      (** The value of the host header in the HTTPS health check request.
If left empty (default value), the public IP on behalf of which this health
check is performed will be used. *)
  port : float prop option; [@option]
      (** The TCP port number for the HTTPS health check request.
The default value is 443. *)
  port_name : string prop option; [@option]
      (** Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. *)
  port_specification : string prop option; [@option]
      (** Specifies how port is selected for health checking, can be one of the
following values:

  * 'USE_FIXED_PORT': The port number in 'port' is used for health checking.

  * 'USE_NAMED_PORT': The 'portName' is used for health checking.

  * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port specified for each
  network endpoint is used for health checking. For other backends, the
  port or named port specified in the Backend Service is used for health
  checking.

If not specified, HTTPS health check follows behavior specified in 'port' and
'portName' fields. Possible values: [USE_FIXED_PORT, USE_NAMED_PORT, USE_SERVING_PORT] *)
  proxy_header : string prop option; [@option]
      (** Specifies the type of proxy header to append before sending data to the
backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  request_path : string prop option; [@option]
      (** The request path of the HTTPS health check request.
The default value is /. *)
  response : string prop option; [@option]
      (** The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type log_config = {
  enable : bool prop option; [@option]
      (** Indicates whether or not to export logs. This is false by default,
which means no health check logging will be done. *)
}
[@@deriving yojson_of]
(** Configure logging on this health check. *)

type ssl_health_check = {
  port : float prop option; [@option]
      (** The TCP port number for the SSL health check request.
The default value is 443. *)
  port_name : string prop option; [@option]
      (** Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. *)
  port_specification : string prop option; [@option]
      (** Specifies how port is selected for health checking, can be one of the
following values:

  * 'USE_FIXED_PORT': The port number in 'port' is used for health checking.

  * 'USE_NAMED_PORT': The 'portName' is used for health checking.

  * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port specified for each
  network endpoint is used for health checking. For other backends, the
  port or named port specified in the Backend Service is used for health
  checking.

If not specified, SSL health check follows behavior specified in 'port' and
'portName' fields. Possible values: [USE_FIXED_PORT, USE_NAMED_PORT, USE_SERVING_PORT] *)
  proxy_header : string prop option; [@option]
      (** Specifies the type of proxy header to append before sending data to the
backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  request : string prop option; [@option]
      (** The application data to send once the SSL connection has been
established (default value is empty). If both request and response are
empty, the connection establishment alone will indicate health. The request
data can only be ASCII. *)
  response : string prop option; [@option]
      (** The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type tcp_health_check = {
  port : float prop option; [@option]
      (** The TCP port number for the TCP health check request.
The default value is 80. *)
  port_name : string prop option; [@option]
      (** Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. *)
  port_specification : string prop option; [@option]
      (** Specifies how port is selected for health checking, can be one of the
following values:

  * 'USE_FIXED_PORT': The port number in 'port' is used for health checking.

  * 'USE_NAMED_PORT': The 'portName' is used for health checking.

  * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port specified for each
  network endpoint is used for health checking. For other backends, the
  port or named port specified in the Backend Service is used for health
  checking.

If not specified, TCP health check follows behavior specified in 'port' and
'portName' fields. Possible values: [USE_FIXED_PORT, USE_NAMED_PORT, USE_SERVING_PORT] *)
  proxy_header : string prop option; [@option]
      (** Specifies the type of proxy header to append before sending data to the
backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  request : string prop option; [@option]
      (** The application data to send once the TCP connection has been
established (default value is empty). If both request and response are
empty, the connection establishment alone will indicate health. The request
data can only be ASCII. *)
  response : string prop option; [@option]
      (** The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_region_health_check = {
  check_interval_sec : float prop option; [@option]
      (** How often (in seconds) to send a health check. The default value is 5
seconds. *)
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  healthy_threshold : float prop option; [@option]
      (** A so-far unhealthy instance will be marked healthy after this many
consecutive successes. The default value is 2. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The Region in which the created health check should reside.
If it is not provided, the provider region is used. *)
  timeout_sec : float prop option; [@option]
      (** How long (in seconds) to wait before claiming failure.
The default value is 5 seconds.  It is invalid for timeoutSec to have
greater value than checkIntervalSec. *)
  unhealthy_threshold : float prop option; [@option]
      (** A so-far healthy instance will be marked unhealthy after this many
consecutive failures. The default value is 2. *)
  grpc_health_check : grpc_health_check list;
  http2_health_check : http2_health_check list;
  http_health_check : http_health_check list;
  https_health_check : https_health_check list;
  log_config : log_config list;
  ssl_health_check : ssl_health_check list;
  tcp_health_check : tcp_health_check list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_health_check *)

let grpc_health_check ?grpc_service_name ?port ?port_name
    ?port_specification () : grpc_health_check =
  { grpc_service_name; port; port_name; port_specification }

let http2_health_check ?host ?port ?port_name ?port_specification
    ?proxy_header ?request_path ?response () : http2_health_check =
  {
    host;
    port;
    port_name;
    port_specification;
    proxy_header;
    request_path;
    response;
  }

let http_health_check ?host ?port ?port_name ?port_specification
    ?proxy_header ?request_path ?response () : http_health_check =
  {
    host;
    port;
    port_name;
    port_specification;
    proxy_header;
    request_path;
    response;
  }

let https_health_check ?host ?port ?port_name ?port_specification
    ?proxy_header ?request_path ?response () : https_health_check =
  {
    host;
    port;
    port_name;
    port_specification;
    proxy_header;
    request_path;
    response;
  }

let log_config ?enable () : log_config = { enable }

let ssl_health_check ?port ?port_name ?port_specification
    ?proxy_header ?request ?response () : ssl_health_check =
  {
    port;
    port_name;
    port_specification;
    proxy_header;
    request;
    response;
  }

let tcp_health_check ?port ?port_name ?port_specification
    ?proxy_header ?request ?response () : tcp_health_check =
  {
    port;
    port_name;
    port_specification;
    proxy_header;
    request;
    response;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_region_health_check ?check_interval_sec
    ?description ?healthy_threshold ?id ?project ?region ?timeout_sec
    ?unhealthy_threshold ?timeouts ~name ~grpc_health_check
    ~http2_health_check ~http_health_check ~https_health_check
    ~log_config ~ssl_health_check ~tcp_health_check () :
    google_compute_region_health_check =
  {
    check_interval_sec;
    description;
    healthy_threshold;
    id;
    name;
    project;
    region;
    timeout_sec;
    unhealthy_threshold;
    grpc_health_check;
    http2_health_check;
    http_health_check;
    https_health_check;
    log_config;
    ssl_health_check;
    tcp_health_check;
    timeouts;
  }

type t = {
  check_interval_sec : float prop;
  creation_timestamp : string prop;
  description : string prop;
  healthy_threshold : float prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  timeout_sec : float prop;
  type_ : string prop;
  unhealthy_threshold : float prop;
}

let make ?check_interval_sec ?description ?healthy_threshold ?id
    ?project ?region ?timeout_sec ?unhealthy_threshold ?timeouts
    ~name ~grpc_health_check ~http2_health_check ~http_health_check
    ~https_health_check ~log_config ~ssl_health_check
    ~tcp_health_check __id =
  let __type = "google_compute_region_health_check" in
  let __attrs =
    ({
       check_interval_sec =
         Prop.computed __type __id "check_interval_sec";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       healthy_threshold =
         Prop.computed __type __id "healthy_threshold";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       timeout_sec = Prop.computed __type __id "timeout_sec";
       type_ = Prop.computed __type __id "type";
       unhealthy_threshold =
         Prop.computed __type __id "unhealthy_threshold";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_health_check
        (google_compute_region_health_check ?check_interval_sec
           ?description ?healthy_threshold ?id ?project ?region
           ?timeout_sec ?unhealthy_threshold ?timeouts ~name
           ~grpc_health_check ~http2_health_check ~http_health_check
           ~https_health_check ~log_config ~ssl_health_check
           ~tcp_health_check ());
    attrs = __attrs;
  }

let register ?tf_module ?check_interval_sec ?description
    ?healthy_threshold ?id ?project ?region ?timeout_sec
    ?unhealthy_threshold ?timeouts ~name ~grpc_health_check
    ~http2_health_check ~http_health_check ~https_health_check
    ~log_config ~ssl_health_check ~tcp_health_check __id =
  let (r : _ Tf_core.resource) =
    make ?check_interval_sec ?description ?healthy_threshold ?id
      ?project ?region ?timeout_sec ?unhealthy_threshold ?timeouts
      ~name ~grpc_health_check ~http2_health_check ~http_health_check
      ~https_health_check ~log_config ~ssl_health_check
      ~tcp_health_check __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
