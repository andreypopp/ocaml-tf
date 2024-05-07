(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type certificates = {
  certificate : string prop;
  created : string prop;
  domain_names : string prop list;
  fingerprint : string prop;
  id : float prop;
  labels : (string * string prop) list;
  name : string prop;
  not_valid_after : string prop;
  not_valid_before : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificates) -> ()

let yojson_of_certificates =
  (function
   | {
       certificate = v_certificate;
       created = v_created;
       domain_names = v_domain_names;
       fingerprint = v_fingerprint;
       id = v_id;
       labels = v_labels;
       name = v_name;
       not_valid_after = v_not_valid_after;
       not_valid_before = v_not_valid_before;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_not_valid_before
         in
         ("not_valid_before", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_not_valid_after
         in
         ("not_valid_after", arg) :: bnds
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
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_domain_names
         in
         ("domain_names", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created in
         ("created", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_certificate in
         ("certificate", arg) :: bnds
       in
       `Assoc bnds
    : certificates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificates

[@@@deriving.end]

type hcloud_certificates = {
  id : string prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_certificates) -> ()

let yojson_of_hcloud_certificates =
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
    : hcloud_certificates -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_certificates

[@@@deriving.end]

let hcloud_certificates ?id ?with_selector () : hcloud_certificates =
  { id; with_selector }

type t = {
  tf_name : string;
  certificates : certificates list prop;
  id : string prop;
  with_selector : string prop;
}

let make ?id ?with_selector __id =
  let __type = "hcloud_certificates" in
  let __attrs =
    ({
       tf_name = __id;
       certificates = Prop.computed __type __id "certificates";
       id = Prop.computed __type __id "id";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_certificates
        (hcloud_certificates ?id ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?with_selector __id =
  let (r : _ Tf_core.resource) = make ?id ?with_selector __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
