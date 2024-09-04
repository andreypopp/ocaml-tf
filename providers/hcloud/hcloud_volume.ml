(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_volume = {
  automount : bool prop option; [@option]
  delete_protection : bool prop option; [@option]
  format : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop option; [@option]
  name : string prop;
  server_id : float prop option; [@option]
  size : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_volume) -> ()

let yojson_of_hcloud_volume =
  (function
   | {
       automount = v_automount;
       delete_protection = v_delete_protection;
       format = v_format;
       id = v_id;
       labels = v_labels;
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
         match v_server_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "server_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
       let bnds =
         match v_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automount with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automount", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_volume

[@@@deriving.end]

let hcloud_volume ?automount ?delete_protection ?format ?id ?labels
    ?location ?server_id ~name ~size () : hcloud_volume =
  {
    automount;
    delete_protection;
    format;
    id;
    labels;
    location;
    name;
    server_id;
    size;
  }

type t = {
  tf_name : string;
  automount : bool prop;
  delete_protection : bool prop;
  format : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  linux_device : string prop;
  location : string prop;
  name : string prop;
  server_id : float prop;
  size : float prop;
}

let make ?automount ?delete_protection ?format ?id ?labels ?location
    ?server_id ~name ~size __id =
  let __type = "hcloud_volume" in
  let __attrs =
    ({
       tf_name = __id;
       automount = Prop.computed __type __id "automount";
       delete_protection =
         Prop.computed __type __id "delete_protection";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       linux_device = Prop.computed __type __id "linux_device";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       server_id = Prop.computed __type __id "server_id";
       size = Prop.computed __type __id "size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_volume
        (hcloud_volume ?automount ?delete_protection ?format ?id
           ?labels ?location ?server_id ~name ~size ());
    attrs = __attrs;
  }

let register ?tf_module ?automount ?delete_protection ?format ?id
    ?labels ?location ?server_id ~name ~size __id =
  let (r : _ Tf_core.resource) =
    make ?automount ?delete_protection ?format ?id ?labels ?location
      ?server_id ~name ~size __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
