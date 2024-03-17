(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_waiting_room_event = {
  custom_page_html : string prop option; [@option]
      (** This is a templated html file that will be rendered at the edge. *)
  description : string prop option; [@option]
      (** A description to let users add more details about the event. *)
  disable_session_renewal : bool prop option; [@option]
      (** Disables automatic renewal of session cookies. *)
  event_end_time : string prop;
      (** ISO 8601 timestamp that marks the end of the event. **Modifying this attribute will force creation of a new resource.** *)
  event_start_time : string prop;
      (** ISO 8601 timestamp that marks the start of the event. Must occur at least 1 minute before `event_end_time`. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** A unique name to identify the event. Only alphanumeric characters, hyphens, and underscores are allowed. **Modifying this attribute will force creation of a new resource.** *)
  new_users_per_minute : float prop option; [@option]
      (** The number of new users that will be let into the route every minute. *)
  prequeue_start_time : string prop option; [@option]
      (** ISO 8601 timestamp that marks when to begin queueing all users before the event starts. Must occur at least 5 minutes before `event_start_time`. *)
  queueing_method : string prop option; [@option]
      (** The queueing method used by the waiting room. Available values: `fifo`, `random`, `passthrough`, `reject`. *)
  session_duration : float prop option; [@option]
      (** Lifetime of a cookie (in minutes) set by Cloudflare for users who get access to the origin. *)
  shuffle_at_event_start : bool prop option; [@option]
      (** Users in the prequeue will be shuffled randomly at the `event_start_time`. Requires that `prequeue_start_time` is not null. Defaults to `false`. *)
  suspended : bool prop option; [@option]
      (** If suspended, the event is ignored and traffic will be handled based on the waiting room configuration. *)
  total_active_users : float prop option; [@option]
      (** The total number of active user sessions on the route at a point in time. *)
  waiting_room_id : string prop;
      (** The Waiting Room ID the event should apply to. **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Waiting Room Event resource. *)

let cloudflare_waiting_room_event ?custom_page_html ?description
    ?disable_session_renewal ?id ?new_users_per_minute
    ?prequeue_start_time ?queueing_method ?session_duration
    ?shuffle_at_event_start ?suspended ?total_active_users
    ~event_end_time ~event_start_time ~name ~waiting_room_id ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_waiting_room_event" in
  let __resource =
    {
      custom_page_html;
      description;
      disable_session_renewal;
      event_end_time;
      event_start_time;
      id;
      name;
      new_users_per_minute;
      prequeue_start_time;
      queueing_method;
      session_duration;
      shuffle_at_event_start;
      suspended;
      total_active_users;
      waiting_room_id;
      zone_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_waiting_room_event __resource);
  ()
