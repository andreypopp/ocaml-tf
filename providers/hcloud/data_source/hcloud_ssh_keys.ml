(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ssh_keys = {
  fingerprint : string prop;
  id : float prop;
  labels : (string * string prop) list;
  name : string prop;
  public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssh_keys) -> ()

let yojson_of_ssh_keys =
  (function
   | {
       fingerprint = v_fingerprint;
       id = v_id;
       labels = v_labels;
       name = v_name;
       public_key = v_public_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fingerprint in
         ("fingerprint", arg) :: bnds
       in
       `Assoc bnds
    : ssh_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssh_keys

[@@@deriving.end]

type hcloud_ssh_keys = {
  id : string prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_ssh_keys) -> ()

let yojson_of_hcloud_ssh_keys =
  (function
   | { id = v_id; with_selector = v_with_selector } ->
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_ssh_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_ssh_keys

[@@@deriving.end]

let hcloud_ssh_keys ?id ?with_selector () : hcloud_ssh_keys =
  { id; with_selector }

type t = {
  tf_name : string;
  id : string prop;
  ssh_keys : ssh_keys list prop;
  with_selector : string prop;
}

let make ?id ?with_selector __id =
  let __type = "hcloud_ssh_keys" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       ssh_keys = Prop.computed __type __id "ssh_keys";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_ssh_keys
        (hcloud_ssh_keys ?id ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?with_selector __id =
  let (r : _ Tf_core.resource) = make ?id ?with_selector __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
