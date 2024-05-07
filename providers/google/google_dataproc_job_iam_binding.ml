(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]
  expression : string prop;
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition) -> ()

let yojson_of_condition =
  (function
   | {
       description = v_description;
       expression = v_expression;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition

[@@@deriving.end]

type google_dataproc_job_iam_binding = {
  id : string prop option; [@option]
  job_id : string prop;
  members : string prop list;
  project : string prop option; [@option]
  region : string prop option; [@option]
  role : string prop;
  condition : condition list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataproc_job_iam_binding) -> ()

let yojson_of_google_dataproc_job_iam_binding =
  (function
   | {
       id = v_id;
       job_id = v_job_id;
       members = v_members;
       project = v_project;
       region = v_region;
       role = v_role;
       condition = v_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_condition v_condition in
         ("condition", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_members
         in
         ("members", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_id in
         ("job_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dataproc_job_iam_binding ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataproc_job_iam_binding

[@@@deriving.end]

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_dataproc_job_iam_binding ?id ?project ?region
    ?(condition = []) ~job_id ~members ~role () :
    google_dataproc_job_iam_binding =
  { id; job_id; members; project; region; role; condition }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  job_id : string prop;
  members : string list prop;
  project : string prop;
  region : string prop;
  role : string prop;
}

let make ?id ?project ?region ?(condition = []) ~job_id ~members
    ~role __id =
  let __type = "google_dataproc_job_iam_binding" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       job_id = Prop.computed __type __id "job_id";
       members = Prop.computed __type __id "members";
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
      yojson_of_google_dataproc_job_iam_binding
        (google_dataproc_job_iam_binding ?id ?project ?region
           ~condition ~job_id ~members ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ?(condition = [])
    ~job_id ~members ~role __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~condition ~job_id ~members ~role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
