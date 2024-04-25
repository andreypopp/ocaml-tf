(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type delivery_config = { delivery_requirement : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_config) -> ()

let yojson_of_delivery_config =
  (function
   | { delivery_requirement = v_delivery_requirement } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_delivery_requirement
         in
         ("delivery_requirement", arg) :: bnds
       in
       `Assoc bnds
    : delivery_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_config

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

type google_pubsub_lite_subscription = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  topic : string prop;
  zone : string prop option; [@option]
  delivery_config : delivery_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_pubsub_lite_subscription) -> ()

let yojson_of_google_pubsub_lite_subscription =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
       topic = v_topic;
       zone = v_zone;
       delivery_config = v_delivery_config;
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
         let arg =
           yojson_of_list yojson_of_delivery_config v_delivery_config
         in
         ("delivery_config", arg) :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
       `Assoc bnds
    : google_pubsub_lite_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_pubsub_lite_subscription

[@@@deriving.end]

let delivery_config ~delivery_requirement () : delivery_config =
  { delivery_requirement }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_pubsub_lite_subscription ?id ?project ?region ?zone
    ?(delivery_config = []) ?timeouts ~name ~topic () :
    google_pubsub_lite_subscription =
  {
    id;
    name;
    project;
    region;
    topic;
    zone;
    delivery_config;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  topic : string prop;
  zone : string prop;
}

let make ?id ?project ?region ?zone ?(delivery_config = []) ?timeouts
    ~name ~topic __id =
  let __type = "google_pubsub_lite_subscription" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       topic = Prop.computed __type __id "topic";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_pubsub_lite_subscription
        (google_pubsub_lite_subscription ?id ?project ?region ?zone
           ~delivery_config ?timeouts ~name ~topic ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ?zone
    ?(delivery_config = []) ?timeouts ~name ~topic __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ?zone ~delivery_config ?timeouts ~name
      ~topic __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
