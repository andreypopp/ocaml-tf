(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_http_health_check__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_http_health_check__timeouts *)

type google_compute_http_health_check = {
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
      (** The value of the host header in the HTTP health check request. If
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
      (** The TCP port number for the HTTP health check request.
The default value is 80. *)
  project : string prop option; [@option]  (** project *)
  request_path : string prop option; [@option]
      (** The request path of the HTTP health check request.
The default value is /. *)
  timeout_sec : float prop option; [@option]
      (** How long (in seconds) to wait before claiming failure.
The default value is 5 seconds.  It is invalid for timeoutSec to have
greater value than checkIntervalSec. *)
  unhealthy_threshold : float prop option; [@option]
      (** A so-far healthy instance will be marked unhealthy after this many
consecutive failures. The default value is 2. *)
  timeouts : google_compute_http_health_check__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_http_health_check *)

let google_compute_http_health_check ?check_interval_sec ?description
    ?healthy_threshold ?host ?id ?port ?project ?request_path
    ?timeout_sec ?unhealthy_threshold ?timeouts ~name __resource_id =
  let __resource_type = "google_compute_http_health_check" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_http_health_check __resource);
  ()
