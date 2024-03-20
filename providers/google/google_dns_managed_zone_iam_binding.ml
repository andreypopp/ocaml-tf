(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_dns_managed_zone_iam_binding = {
  id : string prop option; [@option]  (** id *)
  managed_zone : string prop;  (** managed_zone *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_dns_managed_zone_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_dns_managed_zone_iam_binding ?id ?project ~managed_zone
    ~members ~role ~condition () :
    google_dns_managed_zone_iam_binding =
  { id; managed_zone; members; project; role; condition }

type t = {
  etag : string prop;
  id : string prop;
  managed_zone : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

let make ?id ?project ~managed_zone ~members ~role ~condition __id =
  let __type = "google_dns_managed_zone_iam_binding" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       managed_zone = Prop.computed __type __id "managed_zone";
       members = Prop.computed __type __id "members";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_managed_zone_iam_binding
        (google_dns_managed_zone_iam_binding ?id ?project
           ~managed_zone ~members ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~managed_zone ~members ~role
    ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~managed_zone ~members ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
