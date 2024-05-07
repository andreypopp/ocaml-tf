(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_firewall_attachment = {
  firewall_id : float prop;
  id : string prop option; [@option]
  label_selectors : string prop list option; [@option]
  server_ids : float prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_firewall_attachment) -> ()

let yojson_of_hcloud_firewall_attachment =
  (function
   | {
       firewall_id = v_firewall_id;
       id = v_id;
       label_selectors = v_label_selectors;
       server_ids = v_server_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_server_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "server_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label_selectors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "label_selectors", arg in
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
         let arg = yojson_of_prop yojson_of_float v_firewall_id in
         ("firewall_id", arg) :: bnds
       in
       `Assoc bnds
    : hcloud_firewall_attachment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_firewall_attachment

[@@@deriving.end]

let hcloud_firewall_attachment ?id ?label_selectors ?server_ids
    ~firewall_id () : hcloud_firewall_attachment =
  { firewall_id; id; label_selectors; server_ids }

type t = {
  tf_name : string;
  firewall_id : float prop;
  id : string prop;
  label_selectors : string list prop;
  server_ids : float list prop;
}

let make ?id ?label_selectors ?server_ids ~firewall_id __id =
  let __type = "hcloud_firewall_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       firewall_id = Prop.computed __type __id "firewall_id";
       id = Prop.computed __type __id "id";
       label_selectors = Prop.computed __type __id "label_selectors";
       server_ids = Prop.computed __type __id "server_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_firewall_attachment
        (hcloud_firewall_attachment ?id ?label_selectors ?server_ids
           ~firewall_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?label_selectors ?server_ids ~firewall_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?label_selectors ?server_ids ~firewall_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
