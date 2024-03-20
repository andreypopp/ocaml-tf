(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_uploaded_certificate = {
  certificate : string prop;  (** certificate *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop;  (** name *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** hcloud_uploaded_certificate *)

let hcloud_uploaded_certificate ?id ?labels ~certificate ~name
    ~private_key () : hcloud_uploaded_certificate =
  { certificate; id; labels; name; private_key }

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
  private_key : string prop;
  type_ : string prop;
}

let make ?id ?labels ~certificate ~name ~private_key __id =
  let __type = "hcloud_uploaded_certificate" in
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
       private_key = Prop.computed __type __id "private_key";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_uploaded_certificate
        (hcloud_uploaded_certificate ?id ?labels ~certificate ~name
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
