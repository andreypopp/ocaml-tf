(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_scc_source_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  organization : string prop;  (** organization *)
  role : string prop;  (** role *)
  source : string prop;  (** source *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_scc_source_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_scc_source_iam_binding ?id ~members ~organization ~role
    ~source ~condition () : google_scc_source_iam_binding =
  { id; members; organization; role; source; condition }

type t = {
  etag : string prop;
  id : string prop;
  members : string list prop;
  organization : string prop;
  role : string prop;
  source : string prop;
}

let make ?id ~members ~organization ~role ~source ~condition __id =
  let __type = "google_scc_source_iam_binding" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       organization = Prop.computed __type __id "organization";
       role = Prop.computed __type __id "role";
       source = Prop.computed __type __id "source";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_scc_source_iam_binding
        (google_scc_source_iam_binding ?id ~members ~organization
           ~role ~source ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~members ~organization ~role ~source
    ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ~members ~organization ~role ~source ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
