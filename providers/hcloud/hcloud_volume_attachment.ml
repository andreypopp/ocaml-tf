(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_volume_attachment = {
  automount : bool prop option; [@option]
  id : string prop option; [@option]
  server_id : float prop;
  volume_id : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_volume_attachment) -> ()

let yojson_of_hcloud_volume_attachment =
  (function
   | {
       automount = v_automount;
       id = v_id;
       server_id = v_server_id;
       volume_id = v_volume_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_volume_id in
         ("volume_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_server_id in
         ("server_id", arg) :: bnds
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
         match v_automount with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automount", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_volume_attachment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_volume_attachment

[@@@deriving.end]

let hcloud_volume_attachment ?automount ?id ~server_id ~volume_id ()
    : hcloud_volume_attachment =
  { automount; id; server_id; volume_id }

type t = {
  automount : bool prop;
  id : string prop;
  server_id : float prop;
  volume_id : float prop;
}

let make ?automount ?id ~server_id ~volume_id __id =
  let __type = "hcloud_volume_attachment" in
  let __attrs =
    ({
       automount = Prop.computed __type __id "automount";
       id = Prop.computed __type __id "id";
       server_id = Prop.computed __type __id "server_id";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_volume_attachment
        (hcloud_volume_attachment ?automount ?id ~server_id
           ~volume_id ());
    attrs = __attrs;
  }

let register ?tf_module ?automount ?id ~server_id ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?automount ?id ~server_id ~volume_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
