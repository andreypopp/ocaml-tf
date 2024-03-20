(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codedeploy_app = {
  compute_platform : string prop option; [@option]
      (** compute_platform *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_codedeploy_app *)

let aws_codedeploy_app ?compute_platform ?id ?tags ?tags_all ~name ()
    : aws_codedeploy_app =
  { compute_platform; id; name; tags; tags_all }

type t = {
  application_id : string prop;
  arn : string prop;
  compute_platform : string prop;
  github_account_name : string prop;
  id : string prop;
  linked_to_github : bool prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?compute_platform ?id ?tags ?tags_all ~name __id =
  let __type = "aws_codedeploy_app" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       arn = Prop.computed __type __id "arn";
       compute_platform =
         Prop.computed __type __id "compute_platform";
       github_account_name =
         Prop.computed __type __id "github_account_name";
       id = Prop.computed __type __id "id";
       linked_to_github =
         Prop.computed __type __id "linked_to_github";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codedeploy_app
        (aws_codedeploy_app ?compute_platform ?id ?tags ?tags_all
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?compute_platform ?id ?tags ?tags_all ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?compute_platform ?id ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
