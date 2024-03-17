(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_region_health_check__grpc_health_check = {
  grpc_service_name : string option; [@option]
      (** The gRPC service name for the health check.
The value of grpcServiceName has the following meanings by convention:

* Empty serviceName means the overall status of all services at the backend.
* Non-empty serviceName means the health of that gRPC service, as defined by the owner of the service.

The grpcServiceName can only be ASCII. *)
  port : float option; [@option]
      (** The port number for the health check request.
Must be specified if portName and portSpecification are not set
or if port_specification is USE_FIXED_PORT. Valid values are 1 through 65535. *)
  port_name : string option; [@option]
      (** Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. *)
  port_specification : string option; [@option]
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

type google_compute_region_health_check__http2_health_check = {
  host : string option; [@option]
      (** The value of the host header in the HTTP2 health check request.
If left empty (default value), the public IP on behalf of which this health
check is performed will be used. *)
  port : float option; [@option]
      (** The TCP port number for the HTTP2 health check request.
The default value is 443. *)
  port_name : string option; [@option]
      (** Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. *)
  port_specification : string option; [@option]
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
  proxy_header : string option; [@option]
      (** Specifies the type of proxy header to append before sending data to the
backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  request_path : string option; [@option]
      (** The request path of the HTTP2 health check request.
The default value is /. *)
  response : string option; [@option]
      (** The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_compute_region_health_check__http_health_check = {
  host : string option; [@option]
      (** The value of the host header in the HTTP health check request.
If left empty (default value), the public IP on behalf of which this health
check is performed will be used. *)
  port : float option; [@option]
      (** The TCP port number for the HTTP health check request.
The default value is 80. *)
  port_name : string option; [@option]
      (** Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. *)
  port_specification : string option; [@option]
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
  proxy_header : string option; [@option]
      (** Specifies the type of proxy header to append before sending data to the
backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  request_path : string option; [@option]
      (** The request path of the HTTP health check request.
The default value is /. *)
  response : string option; [@option]
      (** The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_compute_region_health_check__https_health_check = {
  host : string option; [@option]
      (** The value of the host header in the HTTPS health check request.
If left empty (default value), the public IP on behalf of which this health
check is performed will be used. *)
  port : float option; [@option]
      (** The TCP port number for the HTTPS health check request.
The default value is 443. *)
  port_name : string option; [@option]
      (** Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. *)
  port_specification : string option; [@option]
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
  proxy_header : string option; [@option]
      (** Specifies the type of proxy header to append before sending data to the
backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  request_path : string option; [@option]
      (** The request path of the HTTPS health check request.
The default value is /. *)
  response : string option; [@option]
      (** The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_compute_region_health_check__log_config = {
  enable : bool option; [@option]
      (** Indicates whether or not to export logs. This is false by default,
which means no health check logging will be done. *)
}
[@@deriving yojson_of]
(** Configure logging on this health check. *)

type google_compute_region_health_check__ssl_health_check = {
  port : float option; [@option]
      (** The TCP port number for the SSL health check request.
The default value is 443. *)
  port_name : string option; [@option]
      (** Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. *)
  port_specification : string option; [@option]
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
  proxy_header : string option; [@option]
      (** Specifies the type of proxy header to append before sending data to the
backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  request : string option; [@option]
      (** The application data to send once the SSL connection has been
established (default value is empty). If both request and response are
empty, the connection establishment alone will indicate health. The request
data can only be ASCII. *)
  response : string option; [@option]
      (** The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_compute_region_health_check__tcp_health_check = {
  port : float option; [@option]
      (** The TCP port number for the TCP health check request.
The default value is 80. *)
  port_name : string option; [@option]
      (** Port name as defined in InstanceGroup#NamedPort#name. If both port and
port_name are defined, port takes precedence. *)
  port_specification : string option; [@option]
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
  proxy_header : string option; [@option]
      (** Specifies the type of proxy header to append before sending data to the
backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  request : string option; [@option]
      (** The application data to send once the TCP connection has been
established (default value is empty). If both request and response are
empty, the connection establishment alone will indicate health. The request
data can only be ASCII. *)
  response : string option; [@option]
      (** The bytes to match against the beginning of the response data. If left empty
(the default value), any response will indicate health. The response data
can only be ASCII. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_compute_region_health_check__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_region_health_check__timeouts *)

type google_compute_region_health_check = {
  check_interval_sec : float option; [@option]
      (** How often (in seconds) to send a health check. The default value is 5
seconds. *)
  description : string option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  healthy_threshold : float option; [@option]
      (** A so-far unhealthy instance will be marked healthy after this many
consecutive successes. The default value is 2. *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash. *)
  timeout_sec : float option; [@option]
      (** How long (in seconds) to wait before claiming failure.
The default value is 5 seconds.  It is invalid for timeoutSec to have
greater value than checkIntervalSec. *)
  unhealthy_threshold : float option; [@option]
      (** A so-far healthy instance will be marked unhealthy after this many
consecutive failures. The default value is 2. *)
  grpc_health_check :
    google_compute_region_health_check__grpc_health_check list;
  http2_health_check :
    google_compute_region_health_check__http2_health_check list;
  http_health_check :
    google_compute_region_health_check__http_health_check list;
  https_health_check :
    google_compute_region_health_check__https_health_check list;
  log_config : google_compute_region_health_check__log_config list;
  ssl_health_check :
    google_compute_region_health_check__ssl_health_check list;
  tcp_health_check :
    google_compute_region_health_check__tcp_health_check list;
  timeouts : google_compute_region_health_check__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_health_check *)

let google_compute_region_health_check ?check_interval_sec
    ?description ?healthy_threshold ?timeout_sec ?unhealthy_threshold
    ?timeouts ~name ~grpc_health_check ~http2_health_check
    ~http_health_check ~https_health_check ~log_config
    ~ssl_health_check ~tcp_health_check __resource_id =
  let __resource_type = "google_compute_region_health_check" in
  let __resource =
    {
      check_interval_sec;
      description;
      healthy_threshold;
      name;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_health_check __resource);
  ()
