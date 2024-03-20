(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_container_registry = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]
      (** The location of the registry. One of ASIA, EU, US or not specified. See the official documentation for more information on registry locations. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
}
[@@deriving yojson_of]
(** google_container_registry *)

let google_container_registry ?id ?location ?project () :
    google_container_registry =
  { id; location; project }

type t = {
  bucket_self_link : string prop;
  id : string prop;
  location : string prop;
  project : string prop;
}

let make ?id ?location ?project __id =
  let __type = "google_container_registry" in
  let __attrs =
    ({
       bucket_self_link =
         Prop.computed __type __id "bucket_self_link";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_registry
        (google_container_registry ?id ?location ?project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project __id =
  let (r : _ Tf_core.resource) = make ?id ?location ?project __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
