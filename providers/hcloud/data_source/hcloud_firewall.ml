(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type apply_to = {
  label_selector : string prop option; [@option]
  server : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : apply_to) -> ()

let yojson_of_apply_to =
  (function
   | { label_selector = v_label_selector; server = v_server } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_server with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "server", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label_selector", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : apply_to -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_apply_to

[@@@deriving.end]

type rule = {
  description : string prop option; [@option]
  destination_ips : string prop list option; [@option]
  direction : string prop;
  port : string prop option; [@option]
  protocol : string prop option; [@option]
  source_ips : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
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
         match v_source_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       let bnds =
         match v_destination_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_ips", arg in
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
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type hcloud_firewall = {
  id : float prop option; [@option]
  labels : (string * string prop) list option; [@option]
  most_recent : bool prop option; [@option]
  name : string prop option; [@option]
  with_selector : string prop option; [@option]
  apply_to : apply_to list;
  rule : rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_firewall) -> ()

let yojson_of_hcloud_firewall =
  (function
   | {
       id = v_id;
       labels = v_labels;
       most_recent = v_most_recent;
       name = v_name;
       with_selector = v_with_selector;
       apply_to = v_apply_to;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rule v_rule in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_apply_to v_apply_to in
         ("apply_to", arg) :: bnds
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_firewall -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_firewall

[@@@deriving.end]

let apply_to ?label_selector ?server () : apply_to =
  { label_selector; server }

let rule ?description ?destination_ips ?port ?protocol ?source_ips
    ~direction () : rule =
  {
    description;
    destination_ips;
    direction;
    port;
    protocol;
    source_ips;
  }

let hcloud_firewall ?id ?labels ?most_recent ?name ?with_selector
    ~apply_to ~rule () : hcloud_firewall =
  { id; labels; most_recent; name; with_selector; apply_to; rule }

type t = {
  id : float prop;
  labels : (string * string) list prop;
  most_recent : bool prop;
  name : string prop;
  with_selector : string prop;
}

let make ?id ?labels ?most_recent ?name ?with_selector ~apply_to
    ~rule __id =
  let __type = "hcloud_firewall" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       most_recent = Prop.computed __type __id "most_recent";
       name = Prop.computed __type __id "name";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_firewall
        (hcloud_firewall ?id ?labels ?most_recent ?name
           ?with_selector ~apply_to ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?most_recent ?name ?with_selector
    ~apply_to ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?most_recent ?name ?with_selector ~apply_to
      ~rule __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
