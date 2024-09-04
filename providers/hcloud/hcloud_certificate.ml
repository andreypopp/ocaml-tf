(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_certificate = {
  certificate : string prop;
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop;
  private_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_certificate) -> ()

let yojson_of_hcloud_certificate =
  (function
   | {
       certificate = v_certificate;
       id = v_id;
       labels = v_labels;
       name = v_name;
       private_key = v_private_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_certificate in
         ("certificate", arg) :: bnds
       in
       `Assoc bnds
    : hcloud_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_certificate

[@@@deriving.end]

let hcloud_certificate ?id ?labels ~certificate ~name ~private_key ()
    : hcloud_certificate =
  { certificate; id; labels; name; private_key }

type t = {
  tf_name : string;
  certificate : string prop;
  created : string prop;
  domain_names : string list prop;
  fingerprint : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  not_valid_after : string prop;
  not_valid_before : string prop;
  private_key : string prop;
  type_ : string prop;
}

let make ?id ?labels ~certificate ~name ~private_key __id =
  let __type = "hcloud_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate = Prop.computed __type __id "certificate";
       created = Prop.computed __type __id "created";
       domain_names = Prop.computed __type __id "domain_names";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       not_valid_after = Prop.computed __type __id "not_valid_after";
       not_valid_before =
         Prop.computed __type __id "not_valid_before";
       private_key = Prop.computed __type __id "private_key";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_certificate
        (hcloud_certificate ?id ?labels ~certificate ~name
           ~private_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ~certificate ~name ~private_key
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ~certificate ~name ~private_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
