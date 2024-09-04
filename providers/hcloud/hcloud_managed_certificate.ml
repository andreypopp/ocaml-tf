(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_managed_certificate = {
  domain_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_managed_certificate) -> ()

let yojson_of_hcloud_managed_certificate =
  (function
   | {
       domain_names = v_domain_names;
       id = v_id;
       labels = v_labels;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         if Stdlib.( = ) [] v_domain_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_domain_names
           in
           let bnd = "domain_names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : hcloud_managed_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_managed_certificate

[@@@deriving.end]

let hcloud_managed_certificate ?id ?labels ~domain_names ~name () :
    hcloud_managed_certificate =
  { domain_names; id; labels; name }

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
  type_ : string prop;
}

let make ?id ?labels ~domain_names ~name __id =
  let __type = "hcloud_managed_certificate" in
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
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_managed_certificate
        (hcloud_managed_certificate ?id ?labels ~domain_names ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ~domain_names ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ~domain_names ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
