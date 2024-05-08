(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alerts__slack = { channel : string prop; url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : alerts__slack) -> ()

let yojson_of_alerts__slack =
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
    : alerts__slack -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alerts__slack

[@@@deriving.end]

type alerts = {
  email : string prop list option; [@option]
  slack : alerts__slack list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alerts) -> ()

let yojson_of_alerts =
  (function
   | { email = v_email; slack = v_slack } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_slack then bnds
         else
           let arg =
             (yojson_of_list yojson_of_alerts__slack) v_slack
           in
           let bnd = "slack", arg in
           bnd :: bnds
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
    : alerts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alerts

[@@@deriving.end]

type digitalocean_monitor_alert = {
  compare : string prop;
  description : string prop;
  enabled : bool prop option; [@option]
  entities : string prop list option; [@option]
  id : string prop option; [@option]
  tags : string prop list option; [@option]
  type_ : string prop; [@key "type"]
  value : float prop;
  window : string prop;
  alerts : alerts list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_monitor_alert) -> ()

let yojson_of_digitalocean_monitor_alert =
  (function
   | {
       compare = v_compare;
       description = v_description;
       enabled = v_enabled;
       entities = v_entities;
       id = v_id;
       tags = v_tags;
       type_ = v_type_;
       value = v_value;
       window = v_window;
       alerts = v_alerts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_alerts then bnds
         else
           let arg = (yojson_of_list yojson_of_alerts) v_alerts in
           let bnd = "alerts", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_window in
         ("window", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
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
         match v_entities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "entities", arg in
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_compare in
         ("compare", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_monitor_alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_monitor_alert

[@@@deriving.end]

let alerts__slack ~channel ~url () : alerts__slack = { channel; url }
let alerts ?email ?(slack = []) () : alerts = { email; slack }

let digitalocean_monitor_alert ?enabled ?entities ?id ?tags ~compare
    ~description ~type_ ~value ~window ~alerts () :
    digitalocean_monitor_alert =
  {
    compare;
    description;
    enabled;
    entities;
    id;
    tags;
    type_;
    value;
    window;
    alerts;
  }

type t = {
  tf_name : string;
  compare : string prop;
  description : string prop;
  enabled : bool prop;
  entities : string list prop;
  id : string prop;
  tags : string list prop;
  type_ : string prop;
  uuid : string prop;
  value : float prop;
  window : string prop;
}

let make ?enabled ?entities ?id ?tags ~compare ~description ~type_
    ~value ~window ~alerts __id =
  let __type = "digitalocean_monitor_alert" in
  let __attrs =
    ({
       tf_name = __id;
       compare = Prop.computed __type __id "compare";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       entities = Prop.computed __type __id "entities";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       uuid = Prop.computed __type __id "uuid";
       value = Prop.computed __type __id "value";
       window = Prop.computed __type __id "window";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_monitor_alert
        (digitalocean_monitor_alert ?enabled ?entities ?id ?tags
           ~compare ~description ~type_ ~value ~window ~alerts ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?entities ?id ?tags ~compare
    ~description ~type_ ~value ~window ~alerts __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?entities ?id ?tags ~compare ~description ~type_
      ~value ~window ~alerts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
