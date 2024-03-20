(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_managed_certificate = {
  domain_names : string prop list;  (** domain_names *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** hcloud_managed_certificate *)

let hcloud_managed_certificate ?id ?labels ~domain_names ~name () :
    hcloud_managed_certificate =
  { domain_names; id; labels; name }

type t = {
  certificate : string prop;
  created : string prop;
  domain_names : string list prop;
  fingerprint : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  not_valid_after : string prop;
  not_valid_before : string prop;
  type_ : string prop;
}

let make ?id ?labels ~domain_names ~name __id =
  let __type = "hcloud_managed_certificate" in
  let __attrs =
    ({
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
