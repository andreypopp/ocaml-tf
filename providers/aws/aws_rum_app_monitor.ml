(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type app_monitor_configuration = {
  allow_cookies : bool prop option; [@option]  (** allow_cookies *)
  enable_xray : bool prop option; [@option]  (** enable_xray *)
  excluded_pages : string prop list option; [@option]
      (** excluded_pages *)
  favorite_pages : string prop list option; [@option]
      (** favorite_pages *)
  guest_role_arn : string prop option; [@option]
      (** guest_role_arn *)
  identity_pool_id : string prop option; [@option]
      (** identity_pool_id *)
  included_pages : string prop list option; [@option]
      (** included_pages *)
  session_sample_rate : float prop option; [@option]
      (** session_sample_rate *)
  telemetries : string prop list option; [@option]  (** telemetries *)
}
[@@deriving yojson_of]
(** app_monitor_configuration *)

type custom_events = {
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** custom_events *)

type aws_rum_app_monitor = {
  cw_log_enabled : bool prop option; [@option]  (** cw_log_enabled *)
  domain : string prop;  (** domain *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  app_monitor_configuration : app_monitor_configuration list;
  custom_events : custom_events list;
}
[@@deriving yojson_of]
(** aws_rum_app_monitor *)

let app_monitor_configuration ?allow_cookies ?enable_xray
    ?excluded_pages ?favorite_pages ?guest_role_arn ?identity_pool_id
    ?included_pages ?session_sample_rate ?telemetries () :
    app_monitor_configuration =
  {
    allow_cookies;
    enable_xray;
    excluded_pages;
    favorite_pages;
    guest_role_arn;
    identity_pool_id;
    included_pages;
    session_sample_rate;
    telemetries;
  }

let custom_events ?status () : custom_events = { status }

let aws_rum_app_monitor ?cw_log_enabled ?id ?tags ?tags_all ~domain
    ~name ~app_monitor_configuration ~custom_events () :
    aws_rum_app_monitor =
  {
    cw_log_enabled;
    domain;
    id;
    name;
    tags;
    tags_all;
    app_monitor_configuration;
    custom_events;
  }

type t = {
  app_monitor_id : string prop;
  arn : string prop;
  cw_log_enabled : bool prop;
  cw_log_group : string prop;
  domain : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?cw_log_enabled ?id ?tags ?tags_all ~domain ~name
    ~app_monitor_configuration ~custom_events __id =
  let __type = "aws_rum_app_monitor" in
  let __attrs =
    ({
       app_monitor_id = Prop.computed __type __id "app_monitor_id";
       arn = Prop.computed __type __id "arn";
       cw_log_enabled = Prop.computed __type __id "cw_log_enabled";
       cw_log_group = Prop.computed __type __id "cw_log_group";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rum_app_monitor
        (aws_rum_app_monitor ?cw_log_enabled ?id ?tags ?tags_all
           ~domain ~name ~app_monitor_configuration ~custom_events ());
    attrs = __attrs;
  }

let register ?tf_module ?cw_log_enabled ?id ?tags ?tags_all ~domain
    ~name ~app_monitor_configuration ~custom_events __id =
  let (r : _ Tf_core.resource) =
    make ?cw_log_enabled ?id ?tags ?tags_all ~domain ~name
      ~app_monitor_configuration ~custom_events __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
