(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_public_ca_external_account_key = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]
      (** Location for the externalAccountKey. Currently only 'global' is supported. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_public_ca_external_account_key *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_public_ca_external_account_key ?id ?location ?project
    ?timeouts () : google_public_ca_external_account_key =
  { id; location; project; timeouts }

type t = {
  b64_mac_key : string prop;
  id : string prop;
  key_id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

let make ?id ?location ?project ?timeouts __id =
  let __type = "google_public_ca_external_account_key" in
  let __attrs =
    ({
       b64_mac_key = Prop.computed __type __id "b64_mac_key";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
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
      yojson_of_google_public_ca_external_account_key
        (google_public_ca_external_account_key ?id ?location ?project
           ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
