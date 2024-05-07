(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  type_ : string prop; [@key "type"]
  value : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action) -> ()

let yojson_of_action =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

[@@@deriving.end]

type matcher = {
  field : string prop option; [@option]
  type_ : string prop; [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : matcher) -> ()

let yojson_of_matcher =
  (function
   | { field = v_field; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : matcher -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_matcher

[@@@deriving.end]

type cloudflare_email_routing_rule = {
  enabled : bool prop option; [@option]
  name : string prop;
  priority : float prop option; [@option]
  zone_id : string prop;
  action : action list;
  matcher : matcher list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_email_routing_rule) -> ()

let yojson_of_cloudflare_email_routing_rule =
  (function
   | {
       enabled = v_enabled;
       name = v_name;
       priority = v_priority;
       zone_id = v_zone_id;
       action = v_action;
       matcher = v_matcher;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_matcher v_matcher in
         ("matcher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_action v_action in
         ("action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
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
       `Assoc bnds
    : cloudflare_email_routing_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_email_routing_rule

[@@@deriving.end]

let action ?value ~type_ () : action = { type_; value }

let matcher ?field ?value ~type_ () : matcher =
  { field; type_; value }

let cloudflare_email_routing_rule ?enabled ?priority ~name ~zone_id
    ~action ~matcher () : cloudflare_email_routing_rule =
  { enabled; name; priority; zone_id; action; matcher }

type t = {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  tag : string prop;
  zone_id : string prop;
}

let make ?enabled ?priority ~name ~zone_id ~action ~matcher __id =
  let __type = "cloudflare_email_routing_rule" in
  let __attrs =
    ({
       tf_name = __id;
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       tag = Prop.computed __type __id "tag";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_email_routing_rule
        (cloudflare_email_routing_rule ?enabled ?priority ~name
           ~zone_id ~action ~matcher ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?priority ~name ~zone_id ~action
    ~matcher __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?priority ~name ~zone_id ~action ~matcher __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
