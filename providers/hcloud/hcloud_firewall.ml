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
  protocol : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
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
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  apply_to : apply_to list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_firewall) -> ()

let yojson_of_hcloud_firewall =
  (function
   | {
       id = v_id;
       labels = v_labels;
       name = v_name;
       apply_to = v_apply_to;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_apply_to then bnds
         else
           let arg =
             (yojson_of_list yojson_of_apply_to) v_apply_to
           in
           let bnd = "apply_to", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_firewall -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_firewall

[@@@deriving.end]

let apply_to ?label_selector ?server () : apply_to =
  { label_selector; server }

let rule ?description ?destination_ips ?port ?source_ips ~direction
    ~protocol () : rule =
  {
    description;
    destination_ips;
    direction;
    port;
    protocol;
    source_ips;
  }

let hcloud_firewall ?id ?labels ~name ~apply_to ~rule () :
    hcloud_firewall =
  { id; labels; name; apply_to; rule }

type t = {
  tf_name : string;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
}

let make ?id ?labels ~name ~apply_to ~rule __id =
  let __type = "hcloud_firewall" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_firewall
        (hcloud_firewall ?id ?labels ~name ~apply_to ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ~name ~apply_to ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ~name ~apply_to ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
