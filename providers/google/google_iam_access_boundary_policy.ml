(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rules__access_boundary_rule__availability_condition = {
  description : string prop option; [@option]
      (** Description of the expression. This is a longer text which describes the expression,
e.g. when hovered over it in a UI. *)
  expression : string prop;
      (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string prop option; [@option]
      (** String indicating the location of the expression for error reporting,
e.g. a file name and a position in the file. *)
  title : string prop option; [@option]
      (** Title for the expression, i.e. a short string describing its purpose.
This can be used e.g. in UIs which allow to enter the expression. *)
}
[@@deriving yojson_of]
(** The availability condition further constrains the access allowed by the access boundary rule. *)

type rules__access_boundary_rule = {
  available_permissions : string prop list option; [@option]
      (** A list of permissions that may be allowed for use on the specified resource. *)
  available_resource : string prop option; [@option]
      (** The full resource name of a Google Cloud resource entity. *)
  availability_condition :
    rules__access_boundary_rule__availability_condition list;
}
[@@deriving yojson_of]
(** An access boundary rule in an IAM policy. *)

type rules = {
  description : string prop option; [@option]
      (** The description of the rule. *)
  access_boundary_rule : rules__access_boundary_rule list;
}
[@@deriving yojson_of]
(** Rules to be applied. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_iam_access_boundary_policy = {
  display_name : string prop option; [@option]
      (** The display name of the rule. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the policy. *)
  parent : string prop;
      (** The attachment point is identified by its URL-encoded full resource name. *)
  rules : rules list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_iam_access_boundary_policy *)

let rules__access_boundary_rule__availability_condition ?description
    ?location ?title ~expression () :
    rules__access_boundary_rule__availability_condition =
  { description; expression; location; title }

let rules__access_boundary_rule ?available_permissions
    ?available_resource ~availability_condition () :
    rules__access_boundary_rule =
  {
    available_permissions;
    available_resource;
    availability_condition;
  }

let rules ?description ~access_boundary_rule () : rules =
  { description; access_boundary_rule }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_iam_access_boundary_policy ?display_name ?id ?timeouts
    ~name ~parent ~rules () : google_iam_access_boundary_policy =
  { display_name; id; name; parent; rules; timeouts }

type t = {
  display_name : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
}

let make ?display_name ?id ?timeouts ~name ~parent ~rules __id =
  let __type = "google_iam_access_boundary_policy" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iam_access_boundary_policy
        (google_iam_access_boundary_policy ?display_name ?id
           ?timeouts ~name ~parent ~rules ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?timeouts ~name ~parent
    ~rules __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?timeouts ~name ~parent ~rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
