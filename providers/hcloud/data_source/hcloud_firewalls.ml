(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type firewalls__rule = {
  description : string prop;
  destination_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  direction : string prop;
  port : string prop;
  protocol : string prop;
  source_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewalls__rule) -> ()

let yojson_of_firewalls__rule =
  (function
   | {
       description = v_description;
       destination_ips = v_destination_ips;
       direction = v_direction;
       port = v_port;
       protocol = v_protocol;
       source_ips = v_source_ips;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_source_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_ips
           in
           let bnd = "source_ips", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       let bnds =
         if [] = v_destination_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_ips
           in
           let bnd = "destination_ips", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : firewalls__rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewalls__rule

[@@@deriving.end]

type firewalls__apply_to = {
  label_selector : string prop;
  server : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewalls__apply_to) -> ()

let yojson_of_firewalls__apply_to =
  (function
   | { label_selector = v_label_selector; server = v_server } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_label_selector
         in
         ("label_selector", arg) :: bnds
       in
       `Assoc bnds
    : firewalls__apply_to -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewalls__apply_to

[@@@deriving.end]

type firewalls = {
  apply_to : firewalls__apply_to list;
      [@default []] [@yojson_drop_default ( = )]
  id : float prop;
  labels : (string * string prop) list;
  name : string prop;
  rule : firewalls__rule list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firewalls) -> ()

let yojson_of_firewalls =
  (function
   | {
       apply_to = v_apply_to;
       id = v_id;
       labels = v_labels;
       name = v_name;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_firewalls__rule) v_rule
           in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         if [] = v_apply_to then bnds
         else
           let arg =
             (yojson_of_list yojson_of_firewalls__apply_to)
               v_apply_to
           in
           let bnd = "apply_to", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : firewalls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firewalls

[@@@deriving.end]

type hcloud_firewalls = {
  id : string prop option; [@option]
  most_recent : bool prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_firewalls) -> ()

let yojson_of_hcloud_firewalls =
  (function
   | {
       id = v_id;
       most_recent = v_most_recent;
       with_selector = v_with_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "with_selector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
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
       `Assoc bnds
    : hcloud_firewalls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_firewalls

[@@@deriving.end]

let hcloud_firewalls ?id ?most_recent ?with_selector () :
    hcloud_firewalls =
  { id; most_recent; with_selector }

type t = {
  tf_name : string;
  firewalls : firewalls list prop;
  id : string prop;
  most_recent : bool prop;
  with_selector : string prop;
}

let make ?id ?most_recent ?with_selector __id =
  let __type = "hcloud_firewalls" in
  let __attrs =
    ({
       tf_name = __id;
       firewalls = Prop.computed __type __id "firewalls";
       id = Prop.computed __type __id "id";
       most_recent = Prop.computed __type __id "most_recent";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_firewalls
        (hcloud_firewalls ?id ?most_recent ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?most_recent ?with_selector __id =
  let (r : _ Tf_core.resource) =
    make ?id ?most_recent ?with_selector __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
