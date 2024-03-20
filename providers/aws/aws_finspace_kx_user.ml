(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_finspace_kx_user = {
  environment_id : string prop;  (** environment_id *)
  iam_role : string prop;  (** iam_role *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_user *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_finspace_kx_user ?id ?tags ?tags_all ?timeouts
    ~environment_id ~iam_role ~name () : aws_finspace_kx_user =
  { environment_id; iam_role; id; name; tags; tags_all; timeouts }

type t = {
  arn : string prop;
  environment_id : string prop;
  iam_role : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~environment_id ~iam_role
    ~name __id =
  let __type = "aws_finspace_kx_user" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       environment_id = Prop.computed __type __id "environment_id";
       iam_role = Prop.computed __type __id "iam_role";
       id = Prop.computed __type __id "id";
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
      yojson_of_aws_finspace_kx_user
        (aws_finspace_kx_user ?id ?tags ?tags_all ?timeouts
           ~environment_id ~iam_role ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~environment_id
    ~iam_role ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~environment_id ~iam_role
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
