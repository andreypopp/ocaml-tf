(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_billing_project_info = {
  billing_account : string prop;
      (** The ID of the billing account associated with the project, if
any. Set to empty string to disable billing for the project.
For example, '012345-567890-ABCDEF' or ''. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_billing_project_info *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_billing_project_info ?id ?project ?timeouts
    ~billing_account () : google_billing_project_info =
  { billing_account; id; project; timeouts }

type t = {
  billing_account : string prop;
  id : string prop;
  project : string prop;
}

let make ?id ?project ?timeouts ~billing_account __id =
  let __type = "google_billing_project_info" in
  let __attrs =
    ({
       billing_account = Prop.computed __type __id "billing_account";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_billing_project_info
        (google_billing_project_info ?id ?project ?timeouts
           ~billing_account ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~billing_account __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~billing_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
