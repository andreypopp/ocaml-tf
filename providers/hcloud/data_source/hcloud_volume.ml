(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_volume = {
  id : float prop option; [@option]
  location : string prop option; [@option]
  name : string prop option; [@option]
  selector : string prop option; [@option]
  server_id : float prop option; [@option]
  with_selector : string prop option; [@option]
  with_status : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_volume) -> ()

let yojson_of_hcloud_volume =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       selector = v_selector;
       server_id = v_server_id;
       with_selector = v_with_selector;
       with_status = v_with_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "with_status", arg in
             bnd :: bnds
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
         match v_server_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "server_id", arg in
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
    : hcloud_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_volume

[@@@deriving.end]

let hcloud_volume ?id ?location ?name ?selector ?server_id
    ?with_selector ?with_status () : hcloud_volume =
  {
    id;
    location;
    name;
    selector;
    server_id;
    with_selector;
    with_status;
  }

type t = {
  tf_name : string;
  delete_protection : bool prop;
  id : float prop;
  labels : string Tf_core.assoc prop;
  linux_device : string prop;
  location : string prop;
  name : string prop;
  selector : string prop;
  server_id : float prop;
  size : float prop;
  with_selector : string prop;
  with_status : string list prop;
}

let make ?id ?location ?name ?selector ?server_id ?with_selector
    ?with_status __id =
  let __type = "hcloud_volume" in
  let __attrs =
    ({
       tf_name = __id;
       delete_protection =
         Prop.computed __type __id "delete_protection";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       linux_device = Prop.computed __type __id "linux_device";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       selector = Prop.computed __type __id "selector";
       server_id = Prop.computed __type __id "server_id";
       size = Prop.computed __type __id "size";
       with_selector = Prop.computed __type __id "with_selector";
       with_status = Prop.computed __type __id "with_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_volume
        (hcloud_volume ?id ?location ?name ?selector ?server_id
           ?with_selector ?with_status ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?name ?selector ?server_id
    ?with_selector ?with_status __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?name ?selector ?server_id ?with_selector
      ?with_status __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
