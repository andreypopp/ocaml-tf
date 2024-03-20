(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type properties = {
  direction : string prop;
      (** The direction the index should optimize for sorting. Possible values: [ASCENDING, DESCENDING] *)
  name : string prop;  (** The property name to index. *)
}
[@@deriving yojson_of]
(** An ordered list of properties to index on. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_datastore_index = {
  ancestor : string prop option; [@option]
      (** Policy for including ancestors in the index. Default value: NONE Possible values: [NONE, ALL_ANCESTORS] *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;
      (** The entity kind which the index applies to. *)
  project : string prop option; [@option]  (** project *)
  properties : properties list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_datastore_index *)

let properties ~direction ~name () : properties = { direction; name }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_datastore_index ?ancestor ?id ?project ?timeouts ~kind
    ~properties () : google_datastore_index =
  { ancestor; id; kind; project; properties; timeouts }

type t = {
  ancestor : string prop;
  id : string prop;
  index_id : string prop;
  kind : string prop;
  project : string prop;
}

let make ?ancestor ?id ?project ?timeouts ~kind ~properties __id =
  let __type = "google_datastore_index" in
  let __attrs =
    ({
       ancestor = Prop.computed __type __id "ancestor";
       id = Prop.computed __type __id "id";
       index_id = Prop.computed __type __id "index_id";
       kind = Prop.computed __type __id "kind";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_datastore_index
        (google_datastore_index ?ancestor ?id ?project ?timeouts
           ~kind ~properties ());
    attrs = __attrs;
  }

let register ?tf_module ?ancestor ?id ?project ?timeouts ~kind
    ~properties __id =
  let (r : _ Tf_core.resource) =
    make ?ancestor ?id ?project ?timeouts ~kind ~properties __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
