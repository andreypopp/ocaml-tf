(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_kms_key_ring = {
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location for the KeyRing.
A full list of valid locations can be found by running 'gcloud kms locations list'. *)
  name : string prop;  (** The resource name for the KeyRing. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_kms_key_ring *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_kms_key_ring ?id ?project ?timeouts ~location ~name () :
    google_kms_key_ring =
  { id; location; name; project; timeouts }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

let make ?id ?project ?timeouts ~location ~name __id =
  let __type = "google_kms_key_ring" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_key_ring
        (google_kms_key_ring ?id ?project ?timeouts ~location ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
