(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_routes = {
  host : string prop;
      (** The additional host name for which the waiting room to be applied on (no wildcards). *)
  path : string prop option; [@option]
      (** The path within the additional host to enable the waiting room on. Defaults to `/`. *)
}
[@@deriving yojson_of]
(** A list of additional hostname and paths combination to be applied on the waiting room. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type cloudflare_waiting_room = {
  cookie_suffix : string prop option; [@option]
      (** A cookie suffix to be appended to the Cloudflare waiting room cookie name. *)
  custom_page_html : string prop option; [@option]
      (** This is a templated html file that will be rendered at the edge. *)
  default_template_language : string prop option; [@option]
      (** The language to use for the default waiting room page. Available values: `de-DE`, `es-ES`, `en-US`, `fr-FR`, `id-ID`, `it-IT`, `ja-JP`, `ko-KR`, `nl-NL`, `pl-PL`, `pt-BR`, `tr-TR`, `zh-CN`, `zh-TW`, `ru-RU`, `fa-IR`. Defaults to `en-US`. *)
  description : string prop option; [@option]
      (** A description to add more details about the waiting room. *)
  disable_session_renewal : bool prop option; [@option]
      (** Disables automatic renewal of session cookies. *)
  host : string prop;
      (** Host name for which the waiting room will be applied (no wildcards). *)
  id : string prop option; [@option]  (** id *)
  json_response_enabled : bool prop option; [@option]
      (** If true, requests to the waiting room with the header `Accept: application/json` will receive a JSON response object. *)
  name : string prop;
      (** A unique name to identify the waiting room. **Modifying this attribute will force creation of a new resource.** *)
  new_users_per_minute : float prop;
      (** The number of new users that will be let into the route every minute. *)
  path : string prop option; [@option]
      (** The path within the host to enable the waiting room on. Defaults to `/`. *)
  queue_all : bool prop option; [@option]
      (** If queue_all is true, then all traffic will be sent to the waiting room. *)
  queueing_method : string prop option; [@option]
      (** The queueing method used by the waiting room. Available values: `fifo`, `random`, `passthrough`, `reject`. Defaults to `fifo`. *)
  queueing_status_code : float prop option; [@option]
      (** HTTP status code returned to a user while in the queue. Defaults to `200`. *)
  session_duration : float prop option; [@option]
      (** Lifetime of a cookie (in minutes) set by Cloudflare for users who get access to the origin. Defaults to `5`. *)
  suspended : bool prop option; [@option]
      (** Suspends the waiting room. *)
  total_active_users : float prop;
      (** The total number of active user sessions on the route at a point in time. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  additional_routes : additional_routes list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Waiting Room resource. *)

let additional_routes ?path ~host () : additional_routes =
  { host; path }

let timeouts ?create ?update () : timeouts = { create; update }

let cloudflare_waiting_room ?cookie_suffix ?custom_page_html
    ?default_template_language ?description ?disable_session_renewal
    ?id ?json_response_enabled ?path ?queue_all ?queueing_method
    ?queueing_status_code ?session_duration ?suspended ?timeouts
    ~host ~name ~new_users_per_minute ~total_active_users ~zone_id
    ~additional_routes () : cloudflare_waiting_room =
  {
    cookie_suffix;
    custom_page_html;
    default_template_language;
    description;
    disable_session_renewal;
    host;
    id;
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

type t = {
  cookie_suffix : string prop;
  custom_page_html : string prop;
  default_template_language : string prop;
  description : string prop;
  disable_session_renewal : bool prop;
  host : string prop;
  id : string prop;
  json_response_enabled : bool prop;
  name : string prop;
  new_users_per_minute : float prop;
  path : string prop;
  queue_all : bool prop;
  queueing_method : string prop;
  queueing_status_code : float prop;
  session_duration : float prop;
  suspended : bool prop;
  total_active_users : float prop;
  zone_id : string prop;
}

let make ?cookie_suffix ?custom_page_html ?default_template_language
    ?description ?disable_session_renewal ?id ?json_response_enabled
    ?path ?queue_all ?queueing_method ?queueing_status_code
    ?session_duration ?suspended ?timeouts ~host ~name
    ~new_users_per_minute ~total_active_users ~zone_id
    ~additional_routes __id =
  let __type = "cloudflare_waiting_room" in
  let __attrs =
    ({
       cookie_suffix = Prop.computed __type __id "cookie_suffix";
       custom_page_html =
         Prop.computed __type __id "custom_page_html";
       default_template_language =
         Prop.computed __type __id "default_template_language";
       description = Prop.computed __type __id "description";
       disable_session_renewal =
         Prop.computed __type __id "disable_session_renewal";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       json_response_enabled =
         Prop.computed __type __id "json_response_enabled";
       name = Prop.computed __type __id "name";
       new_users_per_minute =
         Prop.computed __type __id "new_users_per_minute";
       path = Prop.computed __type __id "path";
       queue_all = Prop.computed __type __id "queue_all";
       queueing_method = Prop.computed __type __id "queueing_method";
       queueing_status_code =
         Prop.computed __type __id "queueing_status_code";
       session_duration =
         Prop.computed __type __id "session_duration";
       suspended = Prop.computed __type __id "suspended";
       total_active_users =
         Prop.computed __type __id "total_active_users";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_waiting_room
        (cloudflare_waiting_room ?cookie_suffix ?custom_page_html
           ?default_template_language ?description
           ?disable_session_renewal ?id ?json_response_enabled ?path
           ?queue_all ?queueing_method ?queueing_status_code
           ?session_duration ?suspended ?timeouts ~host ~name
           ~new_users_per_minute ~total_active_users ~zone_id
           ~additional_routes ());
    attrs = __attrs;
  }

let register ?tf_module ?cookie_suffix ?custom_page_html
    ?default_template_language ?description ?disable_session_renewal
    ?id ?json_response_enabled ?path ?queue_all ?queueing_method
    ?queueing_status_code ?session_duration ?suspended ?timeouts
    ~host ~name ~new_users_per_minute ~total_active_users ~zone_id
    ~additional_routes __id =
  let (r : _ Tf_core.resource) =
    make ?cookie_suffix ?custom_page_html ?default_template_language
      ?description ?disable_session_renewal ?id
      ?json_response_enabled ?path ?queue_all ?queueing_method
      ?queueing_status_code ?session_duration ?suspended ?timeouts
      ~host ~name ~new_users_per_minute ~total_active_users ~zone_id
      ~additional_routes __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
