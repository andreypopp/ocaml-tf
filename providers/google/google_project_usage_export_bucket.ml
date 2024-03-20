(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_project_usage_export_bucket = {
  bucket_name : string prop;  (** The bucket to store reports in. *)
  id : string prop option; [@option]  (** id *)
  prefix : string prop option; [@option]
      (** A prefix for the reports, for instance, the project name. *)
  project : string prop option; [@option]
      (** The project to set the export bucket on. If it is not provided, the provider project is used. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_project_usage_export_bucket *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_project_usage_export_bucket ?id ?prefix ?project ?timeouts
    ~bucket_name () : google_project_usage_export_bucket =
  { bucket_name; id; prefix; project; timeouts }

type t = {
  bucket_name : string prop;
  id : string prop;
  prefix : string prop;
  project : string prop;
}

let make ?id ?prefix ?project ?timeouts ~bucket_name __id =
  let __type = "google_project_usage_export_bucket" in
  let __attrs =
    ({
       bucket_name = Prop.computed __type __id "bucket_name";
       id = Prop.computed __type __id "id";
       prefix = Prop.computed __type __id "prefix";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project_usage_export_bucket
        (google_project_usage_export_bucket ?id ?prefix ?project
           ?timeouts ~bucket_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?prefix ?project ?timeouts ~bucket_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?prefix ?project ?timeouts ~bucket_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
