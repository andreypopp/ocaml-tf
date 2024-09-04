(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type volumes = {
  delete_protection : bool prop;
  id : float prop;
  labels : string prop Tf_core.assoc;
  linux_device : string prop;
  location : string prop;
  name : string prop;
  server_id : float prop;
  size : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : volumes) -> ()

let yojson_of_volumes =
  (function
   | {
       delete_protection = v_delete_protection;
       id = v_id;
       labels = v_labels;
       linux_device = v_linux_device;
       location = v_location;
       name = v_name;
       server_id = v_server_id;
       size = v_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_server_id in
         ("server_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_linux_device in
         ("linux_device", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_delete_protection
         in
         ("delete_protection", arg) :: bnds
       in
       `Assoc bnds
    : volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_volumes

[@@@deriving.end]

type hcloud_volumes = {
  id : string prop option; [@option]
  with_selector : string prop option; [@option]
  with_status : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_volumes) -> ()

let yojson_of_hcloud_volumes =
  (function
   | {
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_volumes

[@@@deriving.end]

let hcloud_volumes ?id ?with_selector ?with_status () :
    hcloud_volumes =
  { id; with_selector; with_status }

type t = {
  tf_name : string;
  id : string prop;
  volumes : volumes list prop;
  with_selector : string prop;
  with_status : string list prop;
}

let make ?id ?with_selector ?with_status __id =
  let __type = "hcloud_volumes" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       volumes = Prop.computed __type __id "volumes";
       with_selector = Prop.computed __type __id "with_selector";
       with_status = Prop.computed __type __id "with_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_volumes
        (hcloud_volumes ?id ?with_selector ?with_status ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?with_selector ?with_status __id =
  let (r : _ Tf_core.resource) =
    make ?id ?with_selector ?with_status __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
