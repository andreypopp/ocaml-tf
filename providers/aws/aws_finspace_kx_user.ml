(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~environment_id
    ~iam_role ~name __resource_id =
  let __resource_type = "aws_finspace_kx_user" in
  let __resource =
    aws_finspace_kx_user ?id ?tags ?tags_all ?timeouts
      ~environment_id ~iam_role ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_user __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       environment_id =
         Prop.computed __resource_type __resource_id "environment_id";
       iam_role =
         Prop.computed __resource_type __resource_id "iam_role";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
