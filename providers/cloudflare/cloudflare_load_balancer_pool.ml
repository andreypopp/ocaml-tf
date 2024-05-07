(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type load_shedding = {
  default_percent : float prop option; [@option]
  default_policy : string prop option; [@option]
  session_percent : float prop option; [@option]
  session_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_shedding) -> ()

let yojson_of_load_shedding =
  (function
   | {
       default_percent = v_default_percent;
       default_policy = v_default_policy;
       session_percent = v_session_percent;
       session_policy = v_session_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_session_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_percent", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load_shedding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_shedding

[@@@deriving.end]

type origin_steering = { policy : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : origin_steering) -> ()

let yojson_of_origin_steering =
  (function
   | { policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : origin_steering -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin_steering

[@@@deriving.end]

type origins__header = {
  header : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origins__header) -> ()

let yojson_of_origins__header =
  (function
   | { header = v_header; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header in
         ("header", arg) :: bnds
       in
       `Assoc bnds
    : origins__header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origins__header

[@@@deriving.end]

type origins = {
  address : string prop;
  enabled : bool prop option; [@option]
  name : string prop;
  weight : float prop option; [@option]
  header : origins__header list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origins) -> ()

let yojson_of_origins =
  (function
   | {
       address = v_address;
       enabled = v_enabled;
       name = v_name;
       weight = v_weight;
       header = v_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_origins__header v_header
         in
         ("header", arg) :: bnds
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : origins -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origins

[@@@deriving.end]

type cloudflare_load_balancer_pool = {
  account_id : string prop;
  check_regions : string prop list option; [@option]
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  latitude : float prop option; [@option]
  longitude : float prop option; [@option]
  minimum_origins : float prop option; [@option]
  monitor : string prop option; [@option]
  name : string prop;
  notification_email : string prop option; [@option]
  load_shedding : load_shedding list;
  origin_steering : origin_steering list;
  origins : origins list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_load_balancer_pool) -> ()

let yojson_of_cloudflare_load_balancer_pool =
  (function
   | {
       account_id = v_account_id;
       check_regions = v_check_regions;
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       latitude = v_latitude;
       longitude = v_longitude;
       minimum_origins = v_minimum_origins;
       monitor = v_monitor;
       name = v_name;
       notification_email = v_notification_email;
       load_shedding = v_load_shedding;
       origin_steering = v_origin_steering;
       origins = v_origins;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_origins v_origins in
         ("origins", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_origin_steering v_origin_steering
         in
         ("origin_steering", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_load_shedding v_load_shedding
         in
         ("load_shedding", arg) :: bnds
       in
       let bnds =
         match v_notification_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_email", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_monitor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "monitor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minimum_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum_origins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_longitude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "longitude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_latitude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "latitude", arg in
             bnd :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
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
         match v_check_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "check_regions", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_load_balancer_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_load_balancer_pool

[@@@deriving.end]

let load_shedding ?default_percent ?default_policy ?session_percent
    ?session_policy () : load_shedding =
  {
    default_percent;
    default_policy;
    session_percent;
    session_policy;
  }

let origin_steering ?policy () : origin_steering = { policy }

let origins__header ~header ~values () : origins__header =
  { header; values }

let origins ?enabled ?weight ~address ~name ~header () : origins =
  { address; enabled; name; weight; header }

let cloudflare_load_balancer_pool ?check_regions ?description
    ?enabled ?id ?latitude ?longitude ?minimum_origins ?monitor
    ?notification_email ~account_id ~name ~load_shedding
    ~origin_steering ~origins () : cloudflare_load_balancer_pool =
  {
    account_id;
    check_regions;
    description;
    enabled;
    id;
    latitude;
    longitude;
    minimum_origins;
    monitor;
    name;
    notification_email;
    load_shedding;
    origin_steering;
    origins;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  check_regions : string list prop;
  created_on : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  latitude : float prop;
  longitude : float prop;
  minimum_origins : float prop;
  modified_on : string prop;
  monitor : string prop;
  name : string prop;
  notification_email : string prop;
}

let make ?check_regions ?description ?enabled ?id ?latitude
    ?longitude ?minimum_origins ?monitor ?notification_email
    ~account_id ~name ~load_shedding ~origin_steering ~origins __id =
  let __type = "cloudflare_load_balancer_pool" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       check_regions = Prop.computed __type __id "check_regions";
       created_on = Prop.computed __type __id "created_on";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       latitude = Prop.computed __type __id "latitude";
       longitude = Prop.computed __type __id "longitude";
       minimum_origins = Prop.computed __type __id "minimum_origins";
       modified_on = Prop.computed __type __id "modified_on";
       monitor = Prop.computed __type __id "monitor";
       name = Prop.computed __type __id "name";
       notification_email =
         Prop.computed __type __id "notification_email";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_load_balancer_pool
        (cloudflare_load_balancer_pool ?check_regions ?description
           ?enabled ?id ?latitude ?longitude ?minimum_origins
           ?monitor ?notification_email ~account_id ~name
           ~load_shedding ~origin_steering ~origins ());
    attrs = __attrs;
  }

let register ?tf_module ?check_regions ?description ?enabled ?id
    ?latitude ?longitude ?minimum_origins ?monitor
    ?notification_email ~account_id ~name ~load_shedding
    ~origin_steering ~origins __id =
  let (r : _ Tf_core.resource) =
    make ?check_regions ?description ?enabled ?id ?latitude
      ?longitude ?minimum_origins ?monitor ?notification_email
      ~account_id ~name ~load_shedding ~origin_steering ~origins __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
