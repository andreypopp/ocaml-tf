(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type notifications__slack = {
  channel : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notifications__slack) -> ()

let yojson_of_notifications__slack =
  (function
   | { channel = v_channel; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_channel in
         ("channel", arg) :: bnds
       in
       `Assoc bnds
    : notifications__slack -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notifications__slack

[@@@deriving.end]

type notifications = {
  email : string prop list option; [@option]
  slack : notifications__slack list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notifications) -> ()

let yojson_of_notifications =
  (function
   | { email = v_email; slack = v_slack } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_notifications__slack v_slack
         in
         ("slack", arg) :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : notifications -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notifications

[@@@deriving.end]

type digitalocean_uptime_alert = {
  check_id : string prop;
  comparison : string prop option; [@option]
  name : string prop;
  period : string prop option; [@option]
  threshold : float prop option; [@option]
  type_ : string prop; [@key "type"]
  notifications : notifications list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_uptime_alert) -> ()

let yojson_of_digitalocean_uptime_alert =
  (function
   | {
       check_id = v_check_id;
       comparison = v_comparison;
       name = v_name;
       period = v_period;
       threshold = v_threshold;
       type_ = v_type_;
       notifications = v_notifications;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_notifications v_notifications
         in
         ("notifications", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "period", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_comparison with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comparison", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_check_id in
         ("check_id", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_uptime_alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_uptime_alert

[@@@deriving.end]

let notifications__slack ~channel ~url () : notifications__slack =
  { channel; url }

let notifications ?email ?(slack = []) () : notifications =
  { email; slack }

let digitalocean_uptime_alert ?comparison ?period ?threshold
    ~check_id ~name ~type_ ~notifications () :
    digitalocean_uptime_alert =
  {
    check_id;
    comparison;
    name;
    period;
    threshold;
    type_;
    notifications;
  }

type t = {
  check_id : string prop;
  comparison : string prop;
  id : string prop;
  name : string prop;
  period : string prop;
  threshold : float prop;
  type_ : string prop;
}

let make ?comparison ?period ?threshold ~check_id ~name ~type_
    ~notifications __id =
  let __type = "digitalocean_uptime_alert" in
  let __attrs =
    ({
       check_id = Prop.computed __type __id "check_id";
       comparison = Prop.computed __type __id "comparison";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       period = Prop.computed __type __id "period";
       threshold = Prop.computed __type __id "threshold";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_uptime_alert
        (digitalocean_uptime_alert ?comparison ?period ?threshold
           ~check_id ~name ~type_ ~notifications ());
    attrs = __attrs;
  }

let register ?tf_module ?comparison ?period ?threshold ~check_id
    ~name ~type_ ~notifications __id =
  let (r : _ Tf_core.resource) =
    make ?comparison ?period ?threshold ~check_id ~name ~type_
      ~notifications __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
