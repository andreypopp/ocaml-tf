(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_waiting_room__additional_routes = {
  host : string;
      (** The additional host name for which the waiting room to be applied on (no wildcards). *)
  path : string option; [@option]
      (** The path within the additional host to enable the waiting room on. Defaults to `/`. *)
}
[@@deriving yojson_of]
(** A list of additional hostname and paths combination to be applied on the waiting room. *)

type cloudflare_waiting_room__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** cloudflare_waiting_room__timeouts *)

type cloudflare_waiting_room = {
  cookie_suffix : string option; [@option]
      (** A cookie suffix to be appended to the Cloudflare waiting room cookie name. *)
  custom_page_html : string option; [@option]
      (** This is a templated html file that will be rendered at the edge. *)
  default_template_language : string option; [@option]
      (** The language to use for the default waiting room page. Available values: `de-DE`, `es-ES`, `en-US`, `fr-FR`, `id-ID`, `it-IT`, `ja-JP`, `ko-KR`, `nl-NL`, `pl-PL`, `pt-BR`, `tr-TR`, `zh-CN`, `zh-TW`, `ru-RU`, `fa-IR`. Defaults to `en-US`. *)
  description : string option; [@option]
      (** A description to add more details about the waiting room. *)
  disable_session_renewal : bool option; [@option]
      (** Disables automatic renewal of session cookies. *)
  host : string;
      (** Host name for which the waiting room will be applied (no wildcards). *)
  json_response_enabled : bool option; [@option]
      (** If true, requests to the waiting room with the header `Accept: application/json` will receive a JSON response object. *)
  name : string;
      (** A unique name to identify the waiting room. **Modifying this attribute will force creation of a new resource.** *)
  new_users_per_minute : float;
      (** The number of new users that will be let into the route every minute. *)
  path : string option; [@option]
      (** The path within the host to enable the waiting room on. Defaults to `/`. *)
  queue_all : bool option; [@option]
      (** If queue_all is true, then all traffic will be sent to the waiting room. *)
  queueing_method : string option; [@option]
      (** The queueing method used by the waiting room. Available values: `fifo`, `random`, `passthrough`, `reject`. Defaults to `fifo`. *)
  queueing_status_code : float option; [@option]
      (** HTTP status code returned to a user while in the queue. Defaults to `200`. *)
  session_duration : float option; [@option]
      (** Lifetime of a cookie (in minutes) set by Cloudflare for users who get access to the origin. Defaults to `5`. *)
  suspended : bool option; [@option]
      (** Suspends the waiting room. *)
  total_active_users : float;
      (** The total number of active user sessions on the route at a point in time. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  additional_routes :
    cloudflare_waiting_room__additional_routes list;
  timeouts : cloudflare_waiting_room__timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Waiting Room resource. *)

let cloudflare_waiting_room ?cookie_suffix ?custom_page_html
    ?default_template_language ?description ?disable_session_renewal
    ?json_response_enabled ?path ?queue_all ?queueing_method
    ?queueing_status_code ?session_duration ?suspended ?timeouts
    ~host ~name ~new_users_per_minute ~total_active_users ~zone_id
    ~additional_routes __resource_id =
  let __resource_type = "cloudflare_waiting_room" in
  let __resource =
    {
      cookie_suffix;
      custom_page_html;
      default_template_language;
      description;
      disable_session_renewal;
      host;
      json_response_enabled;
      name;
      new_users_per_minute;
      path;
      queue_all;
      queueing_method;
      queueing_status_code;
      session_duration;
      suspended;
      total_active_users;
      zone_id;
      additional_routes;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_waiting_room __resource);
  ()
