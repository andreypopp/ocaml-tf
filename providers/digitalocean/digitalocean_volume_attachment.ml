(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_volume_attachment = {
  droplet_id : float prop;
  id : string prop option; [@option]
  volume_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_volume_attachment) -> ()

let yojson_of_digitalocean_volume_attachment =
  (function
   | {
       droplet_id = v_droplet_id;
       id = v_id;
       volume_id = v_volume_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_id in
         ("volume_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_droplet_id in
         ("droplet_id", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_volume_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_volume_attachment

[@@@deriving.end]

let digitalocean_volume_attachment ?id ~droplet_id ~volume_id () :
    digitalocean_volume_attachment =
  { droplet_id; id; volume_id }

type t = {
  tf_name : string;
  droplet_id : float prop;
  id : string prop;
  volume_id : string prop;
}

let make ?id ~droplet_id ~volume_id __id =
  let __type = "digitalocean_volume_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       droplet_id = Prop.computed __type __id "droplet_id";
       id = Prop.computed __type __id "id";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_volume_attachment
        (digitalocean_volume_attachment ?id ~droplet_id ~volume_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~droplet_id ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~droplet_id ~volume_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
