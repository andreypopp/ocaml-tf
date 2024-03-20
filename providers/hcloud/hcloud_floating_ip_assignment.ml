(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_floating_ip_assignment = {
  floating_ip_id : float prop;
  id : string prop option; [@option]
  server_id : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_floating_ip_assignment) -> ()

let yojson_of_hcloud_floating_ip_assignment =
  (function
   | {
       floating_ip_id = v_floating_ip_id;
       id = v_id;
       server_id = v_server_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_float v_floating_ip_id in
         ("floating_ip_id", arg) :: bnds
       in
       `Assoc bnds
    : hcloud_floating_ip_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_floating_ip_assignment

[@@@deriving.end]

let hcloud_floating_ip_assignment ?id ~floating_ip_id ~server_id () :
    hcloud_floating_ip_assignment =
  { floating_ip_id; id; server_id }

type t = {
  floating_ip_id : float prop;
  id : string prop;
  server_id : float prop;
}

let make ?id ~floating_ip_id ~server_id __id =
  let __type = "hcloud_floating_ip_assignment" in
  let __attrs =
    ({
       floating_ip_id = Prop.computed __type __id "floating_ip_id";
       id = Prop.computed __type __id "id";
       server_id = Prop.computed __type __id "server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_floating_ip_assignment
        (hcloud_floating_ip_assignment ?id ~floating_ip_id ~server_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~floating_ip_id ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~floating_ip_id ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
