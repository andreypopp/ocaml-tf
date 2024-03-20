(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_cloudfunctions_function_iam_member = {
  cloud_function : string prop;  (** cloud_function *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_cloudfunctions_function_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_cloudfunctions_function_iam_member ?id ?project ?region
    ~cloud_function ~member ~role ~condition () :
    google_cloudfunctions_function_iam_member =
  { cloud_function; id; member; project; region; role; condition }

type t = {
  cloud_function : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  region : string prop;
  role : string prop;
}

let make ?id ?project ?region ~cloud_function ~member ~role
    ~condition __id =
  let __type = "google_cloudfunctions_function_iam_member" in
  let __attrs =
    ({
       cloud_function = Prop.computed __type __id "cloud_function";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloudfunctions_function_iam_member
        (google_cloudfunctions_function_iam_member ?id ?project
           ?region ~cloud_function ~member ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~cloud_function ~member
    ~role ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~cloud_function ~member ~role
      ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
