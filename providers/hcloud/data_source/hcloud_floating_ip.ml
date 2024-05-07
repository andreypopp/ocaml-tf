(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_floating_ip = {
  id : float prop option; [@option]
  ip_address : string prop option; [@option]
  name : string prop option; [@option]
  selector : string prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_floating_ip) -> ()

let yojson_of_hcloud_floating_ip =
  (function
   | {
       id = v_id;
       ip_address = v_ip_address;
       name = v_name;
       selector = v_selector;
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
         match v_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selector", arg in
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
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
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
    : hcloud_floating_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_floating_ip

[@@@deriving.end]

let hcloud_floating_ip ?id ?ip_address ?name ?selector ?with_selector
    () : hcloud_floating_ip =
  { id; ip_address; name; selector; with_selector }

type t = {
  tf_name : string;
  delete_protection : bool prop;
  description : string prop;
  home_location : string prop;
  id : float prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : (string * string) list prop;
  name : string prop;
  selector : string prop;
  server_id : float prop;
  type_ : string prop;
  with_selector : string prop;
}

let make ?id ?ip_address ?name ?selector ?with_selector __id =
  let __type = "hcloud_floating_ip" in
  let __attrs =
    ({
       tf_name = __id;
       delete_protection =
         Prop.computed __type __id "delete_protection";
       description = Prop.computed __type __id "description";
       home_location = Prop.computed __type __id "home_location";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       ip_network = Prop.computed __type __id "ip_network";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       selector = Prop.computed __type __id "selector";
       server_id = Prop.computed __type __id "server_id";
       type_ = Prop.computed __type __id "type";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_floating_ip
        (hcloud_floating_ip ?id ?ip_address ?name ?selector
           ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_address ?name ?selector
    ?with_selector __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ip_address ?name ?selector ?with_selector __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
