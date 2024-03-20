(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_ssh_key = {
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_ssh_key) -> ()

let yojson_of_hcloud_ssh_key =
  (function
   | {
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
    : hcloud_ssh_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_ssh_key

[@@@deriving.end]

let hcloud_ssh_key ?id ?labels ~name ~public_key () : hcloud_ssh_key
    =
  { id; labels; name; public_key }

type t = {
  fingerprint : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  public_key : string prop;
}

let make ?id ?labels ~name ~public_key __id =
  let __type = "hcloud_ssh_key" in
  let __attrs =
    ({
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       public_key = Prop.computed __type __id "public_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_ssh_key
        (hcloud_ssh_key ?id ?labels ~name ~public_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ~name ~public_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ~name ~public_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
