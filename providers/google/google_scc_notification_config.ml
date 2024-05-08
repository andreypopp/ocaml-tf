(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type streaming_config = { filter : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : streaming_config) -> ()

let yojson_of_streaming_config =
  (function
   | { filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
       in
       `Assoc bnds
    : streaming_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_streaming_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_scc_notification_config = {
  config_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  organization : string prop;
  pubsub_topic : string prop;
  streaming_config : streaming_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_scc_notification_config) -> ()

let yojson_of_google_scc_notification_config =
  (function
   | {
       config_id = v_config_id;
       description = v_description;
       id = v_id;
       organization = v_organization;
       pubsub_topic = v_pubsub_topic;
       streaming_config = v_streaming_config;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_streaming_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_streaming_config)
               v_streaming_config
           in
           let bnd = "streaming_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pubsub_topic in
         ("pubsub_topic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_organization in
         ("organization", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_config_id in
         ("config_id", arg) :: bnds
       in
       `Assoc bnds
    : google_scc_notification_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_scc_notification_config

[@@@deriving.end]

let streaming_config ~filter () : streaming_config = { filter }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_scc_notification_config ?description ?id ?timeouts
    ~config_id ~organization ~pubsub_topic ~streaming_config () :
    google_scc_notification_config =
  {
    config_id;
    description;
    id;
    organization;
    pubsub_topic;
    streaming_config;
    timeouts;
  }

type t = {
  tf_name : string;
  config_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  organization : string prop;
  pubsub_topic : string prop;
  service_account : string prop;
}

let make ?description ?id ?timeouts ~config_id ~organization
    ~pubsub_topic ~streaming_config __id =
  let __type = "google_scc_notification_config" in
  let __attrs =
    ({
       tf_name = __id;
       config_id = Prop.computed __type __id "config_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       organization = Prop.computed __type __id "organization";
       pubsub_topic = Prop.computed __type __id "pubsub_topic";
       service_account = Prop.computed __type __id "service_account";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_scc_notification_config
        (google_scc_notification_config ?description ?id ?timeouts
           ~config_id ~organization ~pubsub_topic ~streaming_config
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~config_id
    ~organization ~pubsub_topic ~streaming_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~config_id ~organization
      ~pubsub_topic ~streaming_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
