(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_waiting_room_event = {
  custom_page_html : string prop option; [@option]
  description : string prop option; [@option]
  disable_session_renewal : bool prop option; [@option]
  event_end_time : string prop;
  event_start_time : string prop;
  id : string prop option; [@option]
  name : string prop;
  new_users_per_minute : float prop option; [@option]
  prequeue_start_time : string prop option; [@option]
  queueing_method : string prop option; [@option]
  session_duration : float prop option; [@option]
  shuffle_at_event_start : bool prop option; [@option]
  suspended : bool prop option; [@option]
  total_active_users : float prop option; [@option]
  waiting_room_id : string prop;
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_waiting_room_event) -> ()

let yojson_of_cloudflare_waiting_room_event =
  (function
   | {
       custom_page_html = v_custom_page_html;
       description = v_description;
       disable_session_renewal = v_disable_session_renewal;
       event_end_time = v_event_end_time;
       event_start_time = v_event_start_time;
       id = v_id;
       name = v_name;
       new_users_per_minute = v_new_users_per_minute;
       prequeue_start_time = v_prequeue_start_time;
       queueing_method = v_queueing_method;
       session_duration = v_session_duration;
       shuffle_at_event_start = v_shuffle_at_event_start;
       suspended = v_suspended;
       total_active_users = v_total_active_users;
       waiting_room_id = v_waiting_room_id;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_waiting_room_id
         in
         ("waiting_room_id", arg) :: bnds
       in
       let bnds =
         match v_total_active_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "total_active_users", arg in
             bnd :: bnds
       in
       let bnds =
         match v_suspended with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "suspended", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shuffle_at_event_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "shuffle_at_event_start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_queueing_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "queueing_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prequeue_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prequeue_start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_new_users_per_minute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "new_users_per_minute", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_event_start_time
         in
         ("event_start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_event_end_time
         in
         ("event_end_time", arg) :: bnds
       in
       let bnds =
         match v_disable_session_renewal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_session_renewal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_page_html with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_page_html", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_waiting_room_event ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_waiting_room_event

[@@@deriving.end]

let cloudflare_waiting_room_event ?custom_page_html ?description
    ?disable_session_renewal ?id ?new_users_per_minute
    ?prequeue_start_time ?queueing_method ?session_duration
    ?shuffle_at_event_start ?suspended ?total_active_users
    ~event_end_time ~event_start_time ~name ~waiting_room_id ~zone_id
    () : cloudflare_waiting_room_event =
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

type t = {
  created_on : string prop;
  custom_page_html : string prop;
  description : string prop;
  disable_session_renewal : bool prop;
  event_end_time : string prop;
  event_start_time : string prop;
  id : string prop;
  modified_on : string prop;
  name : string prop;
  new_users_per_minute : float prop;
  prequeue_start_time : string prop;
  queueing_method : string prop;
  session_duration : float prop;
  shuffle_at_event_start : bool prop;
  suspended : bool prop;
  total_active_users : float prop;
  waiting_room_id : string prop;
  zone_id : string prop;
}

let make ?custom_page_html ?description ?disable_session_renewal ?id
    ?new_users_per_minute ?prequeue_start_time ?queueing_method
    ?session_duration ?shuffle_at_event_start ?suspended
    ?total_active_users ~event_end_time ~event_start_time ~name
    ~waiting_room_id ~zone_id __id =
  let __type = "cloudflare_waiting_room_event" in
  let __attrs =
    ({
       created_on = Prop.computed __type __id "created_on";
       custom_page_html =
         Prop.computed __type __id "custom_page_html";
       description = Prop.computed __type __id "description";
       disable_session_renewal =
         Prop.computed __type __id "disable_session_renewal";
       event_end_time = Prop.computed __type __id "event_end_time";
       event_start_time =
         Prop.computed __type __id "event_start_time";
       id = Prop.computed __type __id "id";
       modified_on = Prop.computed __type __id "modified_on";
       name = Prop.computed __type __id "name";
       new_users_per_minute =
         Prop.computed __type __id "new_users_per_minute";
       prequeue_start_time =
         Prop.computed __type __id "prequeue_start_time";
       queueing_method = Prop.computed __type __id "queueing_method";
       session_duration =
         Prop.computed __type __id "session_duration";
       shuffle_at_event_start =
         Prop.computed __type __id "shuffle_at_event_start";
       suspended = Prop.computed __type __id "suspended";
       total_active_users =
         Prop.computed __type __id "total_active_users";
       waiting_room_id = Prop.computed __type __id "waiting_room_id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_waiting_room_event
        (cloudflare_waiting_room_event ?custom_page_html ?description
           ?disable_session_renewal ?id ?new_users_per_minute
           ?prequeue_start_time ?queueing_method ?session_duration
           ?shuffle_at_event_start ?suspended ?total_active_users
           ~event_end_time ~event_start_time ~name ~waiting_room_id
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_page_html ?description
    ?disable_session_renewal ?id ?new_users_per_minute
    ?prequeue_start_time ?queueing_method ?session_duration
    ?shuffle_at_event_start ?suspended ?total_active_users
    ~event_end_time ~event_start_time ~name ~waiting_room_id ~zone_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?custom_page_html ?description ?disable_session_renewal ?id
      ?new_users_per_minute ?prequeue_start_time ?queueing_method
      ?session_duration ?shuffle_at_event_start ?suspended
      ?total_active_users ~event_end_time ~event_start_time ~name
      ~waiting_room_id ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
